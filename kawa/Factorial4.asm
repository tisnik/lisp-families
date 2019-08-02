Compiled from "Factorial4.scm"
public class Factorial4 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc factorial;

  public static long n;

  public static Factorial4 $instance;

  static final gnu.mapping.SimpleSymbol Lit0;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: lconst_0      
       6: putstatic     #49                 // Field n:J
       9: getstatic     #49                 // Field n:J
      12: bipush        30
      14: i2l           
      15: lcmp          
      16: ifge          45
      19: getstatic     #49                 // Field n:J
      22: invokestatic  #12                 // Method factorial:(J)J
      25: invokestatic  #40                 // Method java/lang/Long.valueOf:(J)Ljava/lang/Long;
      28: invokestatic  #55                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      31: invokestatic  #59                 // Method kawa/lib/ports.newline:()V
      34: getstatic     #49                 // Field n:J
      37: lconst_1      
      38: ladd          
      39: putstatic     #49                 // Field n:J
      42: goto          9
      45: return        

  public static long factorial(long);
    Code:
       0: lload_0       
       1: lconst_0      
       2: lcmp          
       3: ifne          10
       6: lconst_1      
       7: goto          18
      10: lload_0       
      11: lload_0       
      12: lconst_1      
      13: lsub          
      14: invokestatic  #12                 // Method factorial:(J)J
      17: lmul          
      18: lreturn       

  public static java.lang.Object factorial$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #18                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #24                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore        4
       9: aload         4
      11: instanceof    #26                 // class java/lang/Number
      14: ifeq          43
      17: aload         4
      19: checkcast     #26                 // class java/lang/Number
      22: invokevirtual #30                 // Method java/lang/Number.longValue:()J
      25: lstore_2      
      26: aload_1       
      27: invokevirtual #34                 // Method gnu/mapping/CallContext.checkDone:()I
      30: ifeq          35
      33: aload_1       
      34: areturn       
      35: lload_2       
      36: invokestatic  #12                 // Method factorial:(J)J
      39: invokestatic  #40                 // Method java/lang/Long.valueOf:(J)Ljava/lang/Long;
      42: areturn       
      43: aload_1       
      44: dup           
      45: ldc           #41                 // int -786432
      47: invokevirtual #45                 // Method gnu/mapping/CallContext.matchError:(I)V
      50: areturn       

  public static {};
    Code:
       0: ldc           #94                 // String factorial
       2: invokestatic  #99                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #84                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
       8: new           #2                  // class Factorial4
      11: dup           
      12: invokespecial #70                 // Method "<init>":()V
      15: putstatic     #74                 // Field $instance:LFactorial4;
      18: ldc           #2                  // class Factorial4
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class Factorial4
      24: ldc           #76                 // String factorial$check
      26: invokestatic  #80                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #84                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        4097
      35: invokestatic  #90                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #93                 // Field factorial:Lgnu/expr/CompiledProc;
      41: return        

  public Factorial4();
    Code:
       0: aload_0       
       1: invokespecial #64                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #69                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
