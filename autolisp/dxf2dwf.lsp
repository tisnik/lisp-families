; Examples prepared for the classic AutoLISP

;
;  (C) Copyright 2020, 2021  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
;: Jednoducha aplikace pro davkovy prevod vykresove dokumentace
;: z formatu DXF do formatu DWF
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
; Tato funkce slouzi k vymazani vsech entit z aktualne editova-
; neho vykresu. Soucasne s entitami dojde k vymazani vsech
; dalsich AutoCADovskych objektu, jako jsou typy car, dostupne
; fonty, hladiny a bloky.
;
; parametry: zadne
; vystupni hodnota: zadna
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
(defun erase_drawing( / i)
    (command "_erase" "_all" "")
    (command "_purge" "_all" "*" "_n"))



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
; Tato funkce funguje jako filtr, ktery ze jmena vstupniho
; souboru vytvori jmeno souboru vystupniho. Prevod se
; provadi tak, ze se odmaze jmeno koncovky vstupniho souboru
; (koncovka by mela byl .dxf) a pripoji se koncovka nova
; (v nasem konkretnim pripade .dwf).
;
; parametry: jmeno vstupniho souboru s koncovkou DXF
; vystupni hodnota: jmeno vystupniho souboru s koncovkou DWF
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
(defun create_output_name(input_file_name / output_file_name name_length)
    (setq output_file_name "")
    (setq name_length (- (strlen input_file_name) 4)) 
    (setq output_file_name (substr input_file_name 1 name_length))
    (setq output_file_name (strcat output_file_name ".dwf")))



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
; Pomocna funkce provadejici import vykresu z formatu DXF
; a nasledny zoom na celou plochu vykresu
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
(defun import_and_zoom(input_file_name)
    (command "_dxfin" input_file_name)
    (command "_zoom" "_all"))



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
; Tato funkce prevede jeden vykres ze souboroveho formatu DXF do
; vystupniho souboroveho formatu DWF. Vystupni vykres ma pritom
; rozmery upravene tak, aby ho bylo mozne vytisknout na list
; papiru o normovane velikosti A3.
;
; parametry: jmeno vstupniho souboru s koncovkou DXF a DWF
; vystupni hodnota: zadna
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
(defun create_dwf_a3(input_file_name output_file_name)
    (import_and_zoom input_file_name)
    (command "_plot" "_y" "" "DWF ePlot.pc3"
             "ISO A3 (420.00 x 297.00 MM)"
             "M" "K" "N" "" "" "" "_n" ""
             "_n" "_n" output_file_name "_y" "_y")
    (princ))



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
; Tato funkce prevede jeden vykres ze souboroveho formatu DXF do
; vystupniho souboroveho formatu DWF. Vystupni vykres ma pritom
; rozmery upravene tak, aby ho bylo mozne vytisknout na list
; papiru o normovane velikosti A3.
;
; parametry: jmeno vstupniho souboru s koncovkou DXF a DWF
; vystupni hodnota: zadna
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
(defun create_dwf_a4(input_file_name output_file_name)
    (import_and_zoom input_file_name)
    (command "_plot" "_y" "" "DWF ePlot.pc3"
             "ISO A4 (210.00 x 297.00 MM)"
             "M" "K" "N" "" "" "" "_n" ""
             "_n" "_n" output_file_name "_y" "_y")
    (princ))



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
; Tato funkce prevede vsechny vykresy v adresari ze souboroveho
; formatu DXF do souboroveho formatu DWF. Pokud se na konci
; jmena souboru vyskytuje znak 'H', provede se prevod na papir
; velikosti A4, v opacnem pripade se prevadi na papir velikosti
; A3.
;
; parametry: zadne
; vystupni hodnota: zadna
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
(defun C:convert_all( / cmd_echo work_dir dirlist fout)
    (command "_UNDO" "_C" "_O")
    (command "_UNDO" "_C" "_N")
    ; zapamatujeme si stav promenne prostredi CMDECHO
    (setq cmd_echo (getvar "CMDECHO"))
    (setvar "CMDECHO" 0)
    (setvar "SDI" 1)
    ; typ dialogu pro vyber souboru
    (setvar "FILEDIA" 0)
    ; nastavit promennou podle implicitniho ulozeni vykresu
    (setq work_dir "")
    ; uzivatel si vybere jeden vstupni soubor
    (setq work_dir (getfiled "Vyber jeden soubor z pracovniho adresare" work_dir "dxf" 0))
    ; zobrazeni terminalu
    (command "_textscr")
    (if (not (null work_dir))
        (progn
            ; vykousnuti adresare z celeho jmena souboru
            (setq work_dir (vl-filename-directory work_dir))
            (princ (strcat "Vypis vsech souboru v adresari " work_dir))
            ; ziskani vsech souboru se zadanou priponou
            (setq dirlist (vl-directory-files work_dir "*.dxf" 1))
            ; pro jistotu otestujeme spravnost naplneni seznamu,
            ; i kdyz by mel byt vzdy vytvoreny korektne
            (if (null work_dir)
                (progn
                    (princ "zadny soubor nenalezen")
                    (exit)))
            ; logovaci soubor
            (setq fout (open "dxf2dwf.log" "w"))
            ; prochazeni celym seznamem s nalezenymi soubory
            (while (not (null dirlist))
                (setq full_name (strcat work_dir "\\" (car dirlist)))
                (print full_name)
                (princ full_name fout)

                ; test, zda konec jmena souboru neobsahuje na konci znak 'H'
                (setq name_length (- (strlen full_name) 4))
                (setq name_res (substr full_name name_length 1))
                (erase_drawing)
                (setq output_file_name (create_output_name full_name))
                ; kontrolni vypis nazvu vstupniho a vystuphiho souboru
                (print input_file_name)
                (print output_file_name)
                (if (= name_res "H")
                    ; obsahuje "H"
                    (create_dwf_a4 full_name output_file_name)
                    ; neobsahuje "H"
                    (create_dwf_a3 full_name output_file_name))
                (princ "\n" fout)
                (setq dirlist (cdr dirlist)))
            (close fout))
        (princ "Zadny soubor nebyl vybran"))
    (setvar "CMDECHO" cmd_echo)
    (prin1))

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
;; finito
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;
