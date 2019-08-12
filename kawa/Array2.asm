Compiled from "Array2.scm"
public class Array2 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static int[] array2;

  public static Array2 $instance;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: iconst_5      
       6: newarray       int
       8: dup           
       9: iconst_0      
      10: iconst_1      
      11: iastore       
      12: dup           
      13: iconst_1      
      14: iconst_2      
      15: iastore       
      16: dup           
      17: iconst_2      
      18: iconst_3      
      19: iastore       
      20: dup           
      21: iconst_3      
      22: iconst_4      
      23: iastore       
      24: dup           
      25: iconst_4      
      26: iconst_5      
      27: iastore       
      28: putstatic     #12                 // Field array2:[I
      31: getstatic     #12                 // Field array2:[I
      34: invokestatic  #18                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      37: invokestatic  #22                 // Method kawa/lib/ports.newline:()V
      40: getstatic     #12                 // Field array2:[I
      43: iconst_2      
      44: iconst_m1     
      45: iastore       
      46: getstatic     #12                 // Field array2:[I
      49: invokestatic  #18                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      52: invokestatic  #22                 // Method kawa/lib/ports.newline:()V
      55: return        

  public static {};
    Code:
       0: new           #2                  // class Array2
       3: dup           
       4: invokespecial #33                 // Method "<init>":()V
       7: putstatic     #37                 // Field $instance:LArray2;
      10: return        

  public Array2();
    Code:
       0: aload_0       
       1: invokespecial #27                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #32                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
