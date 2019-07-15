#include <stdio.h>
#include <libguile.h>

int main( int argc, char **arg )
{
    SCM function;
    int i;

    scm_init_guile();

    SCM vector = scm_c_make_vector(100, scm_from_int(0));

    for (i = 0; i < 100; i++) {
        SCM element = scm_from_int(i);
        scm_vector_set_x(vector, scm_from_int(i), element);
    }

    scm_c_primitive_load("script8.scm");

    function = scm_variable_ref(scm_c_lookup("print-vector"));

    scm_call_1(function, vector);

    return 0;
}
