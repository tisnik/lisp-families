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

    sc->vptr->scheme_define( 
        sc, 
        sc->global_env, 
        sc->vptr->mk_symbol(sc, "display"), 
        sc->vptr->mk_foreign_func(sc, display));

    const char *script="(display \"Hello world!\")";

    scheme_load_string(sc, script);

    scheme_deinit(sc);
    return 0;
}
