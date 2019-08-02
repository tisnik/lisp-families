Compiled from "Factorial4.scm"
public class Factorial4 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc factorial;

  public static int n;

  static final gnu.math.IntNum Lit0;

  public static Factorial4 $instance;

  static final gnu.mapping.SimpleSymbol Lit1;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: iconst_0      
       6: putstatic     #70                 // Field n:I
       9: getstatic     #70                 // Field n:I
      12: bipush        30
      14: if_icmpge     43
      17: getstatic     #70                 // Field n:I
      20: invokestatic  #55                 // Method factorial:(I)I
      23: invokestatic  #61                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      26: invokestatic  #76                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      29: invokestatic  #80                 // Method kawa/lib/ports.newline:()V
      32: getstatic     #70                 // Field n:I
      35: iconst_1      
      36: iadd          
      37: putstatic     #70                 // Field n:I
      40: goto          9
      43: return        

  public static int factorial(int);
    Code:
       0: iload_0       
       1: invokestatic  #14                 // Method gnu/math/IntNum.make:(I)Lgnu/math/IntNum;
       4: getstatic     #18                 // Field Lit0:Lgnu/math/IntNum;
       7: astore_2      
       8: astore_1      
       9: aload_1       
      10: lconst_0      
      11: invokestatic  #22                 // Method gnu/math/IntNum.compare:(Lgnu/math/IntNum;J)I
      14: ifne          24
      17: aload_2       
      18: invokevirtual #28                 // Method java/lang/Number.intValue:()I
      21: goto          37
      24: aload_1       
      25: iconst_m1     
      26: invokestatic  #32                 // Method gnu/math/IntNum.add:(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
      29: aload_1       
      30: aload_2       
      31: invokestatic  #36                 // Method gnu/math/IntNum.times:(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
      34: goto          7
      37: ireturn       

  public static java.lang.Object factorial$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #42                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #48                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore_3      
       8: aload_3       
       9: instanceof    #24                 // class java/lang/Number
      12: ifeq          40
      15: aload_3       
      16: checkcast     #24                 // class java/lang/Number
      19: invokevirtual #28                 // Method java/lang/Number.intValue:()I
      22: istore_2      
      23: aload_1       
      24: invokevirtual #51                 // Method gnu/mapping/CallContext.checkDone:()I
      27: ifeq          32
      30: aload_1       
      31: areturn       
      32: iload_2       
      33: invokestatic  #55                 // Method factorial:(I)I
      36: invokestatic  #61                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      39: areturn       
      40: aload_1       
      41: dup           
      42: ldc           #62                 // int -786432
      44: invokevirtual #66                 // Method gnu/mapping/CallContext.matchError:(I)V
      47: areturn       

  public static {};
    Code:
       0: ldc           #115                // String factorial
       2: invokestatic  #120                // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #105                // Field Lit1:Lgnu/mapping/SimpleSymbol;
       8: iconst_1      
       9: invokestatic  #122                // Method gnu/math/IntNum.valueOf:(I)Lgnu/math/IntNum;
      12: putstatic     #18                 // Field Lit0:Lgnu/math/IntNum;
      15: new           #2                  // class Factorial4
      18: dup           
      19: invokespecial #91                 // Method "<init>":()V
      22: putstatic     #95                 // Field $instance:LFactorial4;
      25: ldc           #2                  // class Factorial4
      27: astore_0      
      28: aload_0       
      29: ldc           #2                  // class Factorial4
      31: ldc           #97                 // String factorial$check
      33: invokestatic  #101                // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      36: getstatic     #105                // Field Lit1:Lgnu/mapping/SimpleSymbol;
      39: sipush        4097
      42: invokestatic  #111                // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      45: putstatic     #114                // Field factorial:Lgnu/expr/CompiledProc;
      48: return        

  public Factorial4();
    Code:
       0: aload_0       
       1: invokespecial #85                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #90                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
