#include <stdio.h>
#include <libguile.h>

const char *script = "(define (say-hello)\n"\
                     "  (display \"Hello world!\"))";

int main( int argc, char **arg )
{
    SCM function;

    scm_init_guile();

    scm_c_eval_string(script);

    function = scm_variable_ref(scm_c_lookup("say-hello"));

    scm_call_0(function);

    return 0;
}
