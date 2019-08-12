Compiled from "Array3.scm"
public class Array3 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static int[] array2;

  public static Array3 $instance;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: iconst_5      
       6: newarray       int
       8: dup           
       9: iconst_0      
      10: bipush        100
      12: iastore       
      13: dup           
      14: iconst_1      
      15: sipush        200
      18: iastore       
      19: dup           
      20: iconst_2      
      21: sipush        300
      24: iastore       
      25: dup           
      26: iconst_3      
      27: sipush        400
      30: iastore       
      31: dup           
      32: iconst_4      
      33: sipush        500
      36: iastore       
      37: putstatic     #12                 // Field array2:[I
      40: getstatic     #12                 // Field array2:[I
      43: iconst_2      
      44: iconst_m1     
      45: iastore       
      46: return        

  public static {};
    Code:
       0: new           #2                  // class Array3
       3: dup           
       4: invokespecial #25                 // Method "<init>":()V
       7: putstatic     #29                 // Field $instance:LArray3;
      10: return        

  public Array3();
    Code:
       0: aload_0       
       1: invokespecial #18                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #24                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
