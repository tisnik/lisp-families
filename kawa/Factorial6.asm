Compiled from "Factorial5.scm"
public class Factorial5 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc factorial;

  public static int n;

  public static Factorial5 $instance;

  static final gnu.mapping.SimpleSymbol Lit0;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: iconst_0      
       6: putstatic     #48                 // Field n:I
       9: getstatic     #48                 // Field n:I
      12: bipush        30
      14: if_icmpge     43
      17: getstatic     #48                 // Field n:I
      20: invokestatic  #33                 // Method factorial:(I)I
      23: invokestatic  #39                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      26: invokestatic  #54                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      29: invokestatic  #58                 // Method kawa/lib/ports.newline:()V
      32: getstatic     #48                 // Field n:I
      35: iconst_1      
      36: iadd          
      37: putstatic     #48                 // Field n:I
      40: goto          9
      43: return        

  public static int factorial(int);
    Code:
       0: iload_0       
       1: iconst_1      
       2: istore_2      
       3: istore_1      
       4: iload_1       
       5: ifne          12
       8: iload_2       
       9: goto          22
      12: iload_1       
      13: iload_2       
      14: imul          
      15: istore_2      
      16: iinc          1, -1
      19: goto          4
      22: ireturn       

  public static java.lang.Object factorial$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #14                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #20                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore_3      
       8: aload_3       
       9: instanceof    #22                 // class java/lang/Number
      12: ifeq          40
      15: aload_3       
      16: checkcast     #22                 // class java/lang/Number
      19: invokevirtual #26                 // Method java/lang/Number.intValue:()I
      22: istore_2      
      23: aload_1       
      24: invokevirtual #29                 // Method gnu/mapping/CallContext.checkDone:()I
      27: ifeq          32
      30: aload_1       
      31: areturn       
      32: iload_2       
      33: invokestatic  #33                 // Method factorial:(I)I
      36: invokestatic  #39                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      39: areturn       
      40: aload_1       
      41: dup           
      42: ldc           #40                 // int -786432
      44: invokevirtual #44                 // Method gnu/mapping/CallContext.matchError:(I)V
      47: areturn       

  public static {};
    Code:
       0: ldc           #93                 // String factorial
       2: invokestatic  #98                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #83                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
       8: new           #2                  // class Factorial5
      11: dup           
      12: invokespecial #69                 // Method "<init>":()V
      15: putstatic     #73                 // Field $instance:LFactorial5;
      18: ldc           #2                  // class Factorial5
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class Factorial5
      24: ldc           #75                 // String factorial$check
      26: invokestatic  #79                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #83                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        4097
      35: invokestatic  #89                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #92                 // Field factorial:Lgnu/expr/CompiledProc;
      41: return        

  public Factorial5();
    Code:
       0: aload_0       
       1: invokespecial #63                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #68                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
