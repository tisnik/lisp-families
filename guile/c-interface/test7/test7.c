#include <stdio.h>
#include <libguile.h>

int main( int argc, char **arg )
{
    SCM function;
    SCM result_list = SCM_EOL;
    int i;

    scm_init_guile();

    for (i = 0; i < 100; i++) {
        SCM element = scm_from_int(i);
        SCM one_element_list = scm_list_1(element);
        result_list = scm_append(scm_list_2(result_list, one_element_list));
    }

    scm_c_primitive_load("script7.scm");

    function = scm_variable_ref(scm_c_lookup("print-list"));

    scm_call_1(function, result_list);

    return 0;
}
