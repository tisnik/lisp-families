Compiled from "Factorial3.scm"
public class Factorial3 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc factorial;

  public static int n;

  public static Factorial3 $instance;

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
      20: invokestatic  #12                 // Method factorial:(I)I
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
       1: ifne          8
       4: iconst_1      
       5: goto          16
       8: iload_0       
       9: iload_0       
      10: iconst_1      
      11: isub          
      12: invokestatic  #12                 // Method factorial:(I)I
      15: imul          
      16: ireturn       

  public static java.lang.Object factorial$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #18                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #24                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore_3      
       8: aload_3       
       9: instanceof    #26                 // class java/lang/Number
      12: ifeq          40
      15: aload_3       
      16: checkcast     #26                 // class java/lang/Number
      19: invokevirtual #30                 // Method java/lang/Number.intValue:()I
      22: istore_2      
      23: aload_1       
      24: invokevirtual #33                 // Method gnu/mapping/CallContext.checkDone:()I
      27: ifeq          32
      30: aload_1       
      31: areturn       
      32: iload_2       
      33: invokestatic  #12                 // Method factorial:(I)I
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
       8: new           #2                  // class Factorial3
      11: dup           
      12: invokespecial #69                 // Method "<init>":()V
      15: putstatic     #73                 // Field $instance:LFactorial3;
      18: ldc           #2                  // class Factorial3
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class Factorial3
      24: ldc           #75                 // String factorial$check
      26: invokestatic  #79                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #83                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        4097
      35: invokestatic  #89                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #92                 // Field factorial:Lgnu/expr/CompiledProc;
      41: return        

  public Factorial3();
    Code:
       0: aload_0       
       1: invokespecial #63                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #68                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
