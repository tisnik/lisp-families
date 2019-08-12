Compiled from "Array4.scm"
public class Array4 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static float[] array3;

  public static Array4 $instance;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: bipush        10
       7: newarray       float
       9: dup           
      10: iconst_0      
      11: bipush        100
      13: i2f           
      14: fastore       
      15: dup           
      16: iconst_1      
      17: ldc           #9                  // float 200.0f
      19: fastore       
      20: dup           
      21: iconst_2      
      22: ldc           #10                 // float 300.0f
      24: fastore       
      25: dup           
      26: iconst_3      
      27: ldc           #11                 // float 400.0f
      29: fastore       
      30: dup           
      31: iconst_4      
      32: ldc           #12                 // float 500.0f
      34: fastore       
      35: dup           
      36: iconst_5      
      37: ldc           #13                 // float 600.0f
      39: fastore       
      40: dup           
      41: bipush        6
      43: ldc           #14                 // float 700.0f
      45: fastore       
      46: dup           
      47: bipush        7
      49: ldc           #15                 // float 800.0f
      51: fastore       
      52: dup           
      53: bipush        8
      55: ldc           #16                 // float 900.0f
      57: fastore       
      58: dup           
      59: bipush        9
      61: ldc           #17                 // float 1000.0f
      63: fastore       
      64: putstatic     #21                 // Field array3:[F
      67: getstatic     #21                 // Field array3:[F
      70: invokestatic  #27                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      73: invokestatic  #31                 // Method kawa/lib/ports.newline:()V
      76: getstatic     #21                 // Field array3:[F
      79: bipush        9
      81: ldc           #32                 // float -1000.0f
      83: fastore       
      84: getstatic     #21                 // Field array3:[F
      87: invokestatic  #27                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      90: invokestatic  #31                 // Method kawa/lib/ports.newline:()V
      93: return        

  public static {};
    Code:
       0: new           #2                  // class Array4
       3: dup           
       4: invokespecial #43                 // Method "<init>":()V
       7: putstatic     #47                 // Field $instance:LArray4;
      10: return        

  public Array4();
    Code:
       0: aload_0       
       1: invokespecial #37                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #42                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
