#include <stdio.h>

#define USE_INTERFACE 1

#include "scheme.h"
#include "scheme-private.h"

pointer display(scheme *sc, pointer args) {
    if (args!=sc->NIL) {
        if (sc->vptr->is_string(sc->vptr->pair_car(args)))  {
            char *str = sc->vptr->string_value(sc->vptr->pair_car(args));
            printf("%s", str);
        }
    }
    return sc->NIL;
}

int main(void)
{
    scheme *sc;

    sc = scheme_init_new();

    FILE *finit = fopen("init.scm", "r");
    scheme_load_file(sc, finit);
    fclose(finit);

    sc->vptr->scheme_define( 
        sc, 
        sc->global_env, 
        sc->vptr->mk_symbol(sc, "display"), 
        sc->vptr->mk_foreign_func(sc, display));

    FILE *f = fopen("script2.scm", "r");
    scheme_load_file(sc, f);
    fclose(f);

    scheme_deinit(sc);
    return 0;
}
