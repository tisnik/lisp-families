#include <stdio.h>
#include <libguile.h>

int main( int argc, char **arg )
{
    SCM function;

    scm_init_guile();

    scm_c_primitive_load("script1.scm");

    function = scm_variable_ref(scm_c_lookup("say-hello"));

    scm_call_0(function);

    return 0;
}
