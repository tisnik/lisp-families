Compiled from "Factorial1.scm"
public class Factorial1 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc factorial;

  public static gnu.math.IntNum n;

  static final gnu.math.IntNum Lit0;

  static final gnu.math.IntNum Lit1;

  public static Factorial1 $instance;

  static final gnu.mapping.SimpleSymbol Lit2;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: getstatic     #14                 // Field Lit0:Lgnu/math/IntNum;
       8: putstatic     #55                 // Field n:Lgnu/math/IntNum;
      11: getstatic     #55                 // Field n:Lgnu/math/IntNum;
      14: bipush        30
      16: i2l           
      17: invokestatic  #61                 // Method gnu/math/IntNum.compare:(Lgnu/math/IntNum;J)I
      20: ifge          48
      23: getstatic     #55                 // Field n:Lgnu/math/IntNum;
      26: invokestatic  #39                 // Method factorial:(Ljava/lang/Object;)Ljava/lang/Object;
      29: invokestatic  #67                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      32: invokestatic  #71                 // Method kawa/lib/ports.newline:()V
      35: getstatic     #55                 // Field n:Lgnu/math/IntNum;
      38: iconst_1      
      39: invokestatic  #75                 // Method gnu/math/IntNum.add:(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
      42: putstatic     #55                 // Field n:Lgnu/math/IntNum;
      45: goto          11
      48: return        

  public static java.lang.Object factorial(java.lang.Object);
    Code:
       0: aload_0       
       1: getstatic     #14                 // Field Lit0:Lgnu/math/IntNum;
       4: invokestatic  #20                 // Method gnu/kawa/functions/NumberCompare.$Eq:(Ljava/lang/Object;Ljava/lang/Object;)Z
       7: ifeq          16
      10: getstatic     #23                 // Field Lit1:Lgnu/math/IntNum;
      13: goto          34
      16: getstatic     #29                 // Field gnu/kawa/functions/MultiplyOp.TIMES:Lgnu/kawa/functions/MultiplyOp;
      19: aload_0       
      20: iconst_m1     
      21: aload_0       
      22: getstatic     #23                 // Field Lit1:Lgnu/math/IntNum;
      25: invokestatic  #35                 // Method gnu/kawa/functions/AddOp.apply2:(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      28: invokestatic  #39                 // Method factorial:(Ljava/lang/Object;)Ljava/lang/Object;
      31: invokevirtual #44                 // Method gnu/mapping/Procedure.apply2:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      34: areturn       

  public static java.lang.Object factorial$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #48                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: astore_2      
       5: aload_1       
       6: invokevirtual #52                 // Method gnu/mapping/CallContext.checkDone:()I
       9: ifeq          14
      12: aload_1       
      13: areturn       
      14: aload_2       
      15: invokestatic  #39                 // Method factorial:(Ljava/lang/Object;)Ljava/lang/Object;
      18: areturn       

  public static {};
    Code:
       0: ldc           #110                // String factorial
       2: invokestatic  #116                // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #100                // Field Lit2:Lgnu/mapping/SimpleSymbol;
       8: iconst_1      
       9: invokestatic  #119                // Method gnu/math/IntNum.valueOf:(I)Lgnu/math/IntNum;
      12: putstatic     #23                 // Field Lit1:Lgnu/math/IntNum;
      15: iconst_0      
      16: invokestatic  #119                // Method gnu/math/IntNum.valueOf:(I)Lgnu/math/IntNum;
      19: putstatic     #14                 // Field Lit0:Lgnu/math/IntNum;
      22: new           #2                  // class Factorial1
      25: dup           
      26: invokespecial #86                 // Method "<init>":()V
      29: putstatic     #90                 // Field $instance:LFactorial1;
      32: ldc           #2                  // class Factorial1
      34: astore_0      
      35: aload_0       
      36: ldc           #2                  // class Factorial1
      38: ldc           #92                 // String factorial$check
      40: invokestatic  #96                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      43: getstatic     #100                // Field Lit2:Lgnu/mapping/SimpleSymbol;
      46: sipush        4097
      49: invokestatic  #106                // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      52: putstatic     #109                // Field factorial:Lgnu/expr/CompiledProc;
      55: return        

  public Factorial1();
    Code:
       0: aload_0       
       1: invokespecial #80                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #85                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
