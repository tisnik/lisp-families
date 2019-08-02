Compiled from "HelloWorld2.scm"
public class HelloWorld2 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc hello;

  static final gnu.lists.IString Lit0;

  public static HelloWorld2 $instance;

  static final gnu.mapping.SimpleSymbol Lit1;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: invokestatic  #28                 // Method hello:()V
       8: return        

  public static void hello();
    Code:
       0: getstatic     #12                 // Field Lit0:Lgnu/lists/IString;
       3: invokestatic  #18                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
       6: return        

  public static java.lang.Object hello$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #24                 // Method gnu/mapping/CallContext.checkDone:()I
       4: ifeq          9
       7: aload_1       
       8: areturn       
       9: invokestatic  #28                 // Method hello:()V
      12: getstatic     #34                 // Field gnu/mapping/Values.empty:Lgnu/mapping/Values;
      15: areturn       

  public static {};
    Code:
       0: ldc           #69                 // String hello
       2: invokestatic  #75                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #59                 // Field Lit1:Lgnu/mapping/SimpleSymbol;
       8: ldc           #77                 // String Hello world!
      10: invokestatic  #82                 // Method gnu/lists/IString.valueOf:(Ljava/lang/CharSequence;)Lgnu/lists/IString;
      13: putstatic     #12                 // Field Lit0:Lgnu/lists/IString;
      16: new           #2                  // class HelloWorld2
      19: dup           
      20: invokespecial #45                 // Method "<init>":()V
      23: putstatic     #49                 // Field $instance:LHelloWorld2;
      26: ldc           #2                  // class HelloWorld2
      28: astore_0      
      29: aload_0       
      30: ldc           #2                  // class HelloWorld2
      32: ldc           #51                 // String hello$check
      34: invokestatic  #55                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      37: getstatic     #59                 // Field Lit1:Lgnu/mapping/SimpleSymbol;
      40: iconst_0      
      41: invokestatic  #65                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      44: putstatic     #68                 // Field hello:Lgnu/expr/CompiledProc;
      47: return        

  public HelloWorld2();
    Code:
       0: aload_0       
       1: invokespecial #39                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #44                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
