#include <stdio.h>
#include <libguile.h>

int main( int argc, char **arg )
{
    SCM function;

    scm_init_guile();

    SCM s_car = scm_from_int(6);
    SCM s_cdr = scm_from_int(7);
    SCM s_pair = scm_cons(s_car, s_cdr);

    scm_c_primitive_load("script6.scm");

    function = scm_variable_ref(scm_c_lookup("print-pair"));

    scm_call_1(function, s_pair);

    return 0;
}
