#include <stdio.h>
#include <libguile.h>

long factorial(long n)
{
    if (n<=1) {
        return 1;
    } else {
        return n * factorial(n-1);
    }
}

SCM c_factorial(SCM arg)
{
    long c_arg = scm_to_long(arg);
    long result = factorial(c_arg);
    printf("%ld! = %ld\n", c_arg, result);
    return scm_from_int(result);
}

int main( int argc, char **arg )
{
    SCM function;
    int n;

    scm_init_guile();

    scm_c_primitive_load("script4.scm");
    scm_c_define_gsubr("c-factorial", 1, 0, 0, (void*)c_factorial);

    function = scm_variable_ref(scm_c_lookup("call-factorial"));

    for (n=0; n<=10; n++) {
        scm_call_1(function, scm_from_int(n));
    }

    return 0;
}
