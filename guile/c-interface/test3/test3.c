#include <stdio.h>
#include <libguile.h>

int main( int argc, char **arg )
{
    SCM function;

    scm_init_guile();

    scm_c_primitive_load("script3.scm");

    function = scm_variable_ref(scm_c_lookup("print-message"));

    scm_call_1(function, scm_from_utf8_string("Hello world!"));

    return 0;
}
