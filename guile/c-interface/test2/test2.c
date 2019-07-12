#include <stdio.h>
#include <libguile.h>

int main( int argc, char **arg )
{
    SCM function, return_value;
    int integer_result;

    scm_init_guile();

    scm_c_primitive_load("script2.scm");

    function = scm_variable_ref(scm_c_lookup("multiply"));

    return_value = scm_call_2(function, scm_from_int(6), scm_from_int(7));

    integer_result = scm_to_int(return_value);

    printf("result: %d\n", integer_result);

    return 0;
}
