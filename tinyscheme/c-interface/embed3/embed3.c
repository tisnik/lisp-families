#include <stdio.h>

#define USE_INTERFACE 1

#include "scheme.h"
#include "scheme-private.h"

pointer display(scheme *sc, pointer args) {
    if (args!=sc->NIL) {
        if (sc->vptr->is_string(sc->vptr->pair_car(args)))  {
            char *str = sc->vptr->string_value(sc->vptr->pair_car(args));
            printf("%s\n", str);
        }
        else if (sc->vptr->is_number(sc->vptr->pair_car(args))) {
            double v=sc->vptr->rvalue(sc->vptr->pair_car(args));
            printf("%f\n", v);
        }
    }
    return sc->NIL;
}

pointer negate(scheme *sc, pointer args) {
      if (args!=sc->NIL) {
          if (sc->vptr->is_number(sc->vptr->pair_car(args))) {
              double v=sc->vptr->rvalue(sc->vptr->pair_car(args));
              return sc->vptr->mk_real(sc, -v);
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

    sc->vptr->scheme_define( 
        sc, 
        sc->global_env, 
        sc->vptr->mk_symbol(sc, "negate"), 
        sc->vptr->mk_foreign_func(sc, negate));

    FILE *f = fopen("script3.scm", "r");
    scheme_load_file(sc, f);
    fclose(f);

    scheme_deinit(sc);
    return 0;
}
