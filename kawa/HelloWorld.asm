Compiled from "HelloWorld.scm"
public class HelloWorld extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  static final gnu.lists.IString Lit0;

  public static HelloWorld $instance;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: getstatic     #12                 // Field Lit0:Lgnu/lists/IString;
       8: invokestatic  #18                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      11: return        

  public static {};
    Code:
       0: ldc           #36                 // String Hello world!
       2: invokestatic  #42                 // Method gnu/lists/IString.valueOf:(Ljava/lang/CharSequence;)Lgnu/lists/IString;
       5: putstatic     #12                 // Field Lit0:Lgnu/lists/IString;
       8: new           #2                  // class HelloWorld
      11: dup           
      12: invokespecial #30                 // Method "<init>":()V
      15: putstatic     #34                 // Field $instance:LHelloWorld;
      18: return        

  public HelloWorld();
    Code:
       0: aload_0       
       1: invokespecial #24                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #29                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
