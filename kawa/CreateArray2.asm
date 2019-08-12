Compiled from "CreateArray2.scm"
public class CreateArray2 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc createArray;

  public static CreateArray2 $instance;

  static final gnu.mapping.SimpleSymbol Lit0;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: bipush        10
       7: invokestatic  #33                 // Method createArray:(I)[I
      10: astore_3      
      11: aload_3       
      12: invokestatic  #44                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      15: invokestatic  #48                 // Method kawa/lib/ports.newline:()V
      18: return        

  public static int[] createArray(int);
    Code:
       0: iload_0       
       1: newarray       int
       3: areturn       

  public static java.lang.Object createArray$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #14                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #20                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore_3      
       8: aload_3       
       9: instanceof    #22                 // class java/lang/Number
      12: ifeq          37
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
      33: invokestatic  #33                 // Method createArray:(I)[I
      36: areturn       
      37: aload_1       
      38: dup           
      39: ldc           #34                 // int -786432
      41: invokevirtual #38                 // Method gnu/mapping/CallContext.matchError:(I)V
      44: areturn       

  public static {};
    Code:
       0: ldc           #83                 // String createArray
       2: invokestatic  #89                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #73                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
       8: new           #2                  // class CreateArray2
      11: dup           
      12: invokespecial #59                 // Method "<init>":()V
      15: putstatic     #63                 // Field $instance:LCreateArray2;
      18: ldc           #2                  // class CreateArray2
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class CreateArray2
      24: ldc           #65                 // String createArray$check
      26: invokestatic  #69                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #73                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        4097
      35: invokestatic  #79                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #82                 // Field createArray:Lgnu/expr/CompiledProc;
      41: return        

  public CreateArray2();
    Code:
       0: aload_0       
       1: invokespecial #53                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #58                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
