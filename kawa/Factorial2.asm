Compiled from "Factorial2.scm"
public class Factorial2 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc factorial;

  public static int n;

  static final gnu.math.IntNum Lit0;

  public static Factorial2 $instance;

  static final gnu.mapping.SimpleSymbol Lit1;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: iconst_0      
       6: putstatic     #62                 // Field n:I
       9: getstatic     #62                 // Field n:I
      12: bipush        30
      14: if_icmpge     40
      17: getstatic     #62                 // Field n:I
      20: invokestatic  #28                 // Method factorial:(I)Ljava/lang/Object;
      23: invokestatic  #68                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      26: invokestatic  #72                 // Method kawa/lib/ports.newline:()V
      29: getstatic     #62                 // Field n:I
      32: iconst_1      
      33: iadd          
      34: putstatic     #62                 // Field n:I
      37: goto          9
      40: return        

  public static java.lang.Object factorial(int);
    Code:
       0: iload_0       
       1: ifne          10
       4: getstatic     #12                 // Field Lit0:Lgnu/math/IntNum;
       7: goto          26
      10: getstatic     #18                 // Field gnu/kawa/functions/MultiplyOp.TIMES:Lgnu/kawa/functions/MultiplyOp;
      13: iload_0       
      14: invokestatic  #24                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      17: iload_0       
      18: iconst_1      
      19: isub          
      20: invokestatic  #28                 // Method factorial:(I)Ljava/lang/Object;
      23: invokevirtual #34                 // Method gnu/mapping/Procedure.apply2:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      26: areturn       

  public static java.lang.Object factorial$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #38                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #44                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore_3      
       8: aload_3       
       9: instanceof    #46                 // class java/lang/Number
      12: ifeq          37
      15: aload_3       
      16: checkcast     #46                 // class java/lang/Number
      19: invokevirtual #50                 // Method java/lang/Number.intValue:()I
      22: istore_2      
      23: aload_1       
      24: invokevirtual #53                 // Method gnu/mapping/CallContext.checkDone:()I
      27: ifeq          32
      30: aload_1       
      31: areturn       
      32: iload_2       
      33: invokestatic  #28                 // Method factorial:(I)Ljava/lang/Object;
      36: areturn       
      37: aload_1       
      38: dup           
      39: ldc           #54                 // int -786432
      41: invokevirtual #58                 // Method gnu/mapping/CallContext.matchError:(I)V
      44: areturn       

  public static {};
    Code:
       0: ldc           #107                // String factorial
       2: invokestatic  #112                // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #97                 // Field Lit1:Lgnu/mapping/SimpleSymbol;
       8: iconst_1      
       9: invokestatic  #117                // Method gnu/math/IntNum.valueOf:(I)Lgnu/math/IntNum;
      12: putstatic     #12                 // Field Lit0:Lgnu/math/IntNum;
      15: new           #2                  // class Factorial2
      18: dup           
      19: invokespecial #83                 // Method "<init>":()V
      22: putstatic     #87                 // Field $instance:LFactorial2;
      25: ldc           #2                  // class Factorial2
      27: astore_0      
      28: aload_0       
      29: ldc           #2                  // class Factorial2
      31: ldc           #89                 // String factorial$check
      33: invokestatic  #93                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      36: getstatic     #97                 // Field Lit1:Lgnu/mapping/SimpleSymbol;
      39: sipush        4097
      42: invokestatic  #103                // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      45: putstatic     #106                // Field factorial:Lgnu/expr/CompiledProc;
      48: return        

  public Factorial2();
    Code:
       0: aload_0       
       1: invokespecial #77                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #82                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
