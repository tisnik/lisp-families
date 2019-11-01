
Clojure Ring
------------
(ns servertest.core)
;
(require '[ring.adapter.jetty      :as jetty])
(require '[ring.middleware.params  :as http-params])
(require '[ring.util.response      :as http-response])
;
(require '[hiccup.page :as page])
;
(defn render-page
    []
    (page/xhtml
        [:head
            [:title "Hello world!"]
            [:meta {:name "Author"    :content "Pavel Tisnovsky"}]
            [:meta {:name "Generator" :content "Clojure"}]
            [:meta {:http-equiv "Content-type" :content "text/html; charset=utf-8"}]
        ]
        [:body
            [:h1 "Hello world!"]]))
;
(defn generate-response
    [page-content]
    (-> (http-response/response page-content)
        (http-response/content-type "text/html")))
;
(defn handle-request
    [request]
    (generate-response (render-page)))
;
(defn handler
    [request]
    (handle-request request))
;
(def app
    (-> handler
        http-params/wrap-params))
;
(defn start-server
    [port]
    (println "Starting the server at the port: " port)
    (jetty/run-jetty app {:port port}))
;
(defn -main
    [& args]
    (start-server 8080))
