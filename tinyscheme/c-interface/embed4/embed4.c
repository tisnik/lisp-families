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

pointer multiply(scheme *sc, pointer args) {
      if (args!=sc->NIL) {
          if (sc->vptr->is_number(sc->vptr->pair_car(args)) &&
              sc->vptr->is_number(sc->vptr->pair_car(sc->vptr->pair_cdr(args)))) {
              double v1=sc->vptr->rvalue(sc->vptr->pair_car(args));
              double v2=sc->vptr->rvalue(sc->vptr->pair_car(sc->vptr->pair_cdr(args)));
              return sc->vptr->mk_real(sc, v1 * v2);
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
        sc->vptr->mk_symbol(sc, "multiply"), 
        sc->vptr->mk_foreign_func(sc, multiply));

    FILE *f = fopen("script4.scm", "r");
    scheme_load_file(sc, f);
    fclose(f);

    scheme_deinit(sc);
    return 0;
}
