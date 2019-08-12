Compiled from "Array1.scm"
public class Array1 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static int[] array1;

  public static Array1 $instance;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: bipush        10
       7: newarray       int
       9: putstatic     #12                 // Field array1:[I
      12: getstatic     #12                 // Field array1:[I
      15: invokestatic  #18                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      18: invokestatic  #22                 // Method kawa/lib/ports.newline:()V
      21: return        

  public static {};
    Code:
       0: new           #2                  // class Array1
       3: dup           
       4: invokespecial #33                 // Method "<init>":()V
       7: putstatic     #37                 // Field $instance:LArray1;
      10: return        

  public Array1();
    Code:
       0: aload_0       
       1: invokespecial #27                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #32                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
