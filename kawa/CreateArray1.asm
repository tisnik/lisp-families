Compiled from "CreateArray1.scm"
public class CreateArray1 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc createArray;

  static final gnu.math.IntNum Lit0;

  public static CreateArray1 $instance;

  static final gnu.mapping.SimpleSymbol Lit1;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: getstatic     #39                 // Field Lit0:Lgnu/math/IntNum;
       8: invokestatic  #35                 // Method createArray:(Ljava/lang/Object;)[I
      11: astore_3      
      12: aload_3       
      13: invokestatic  #45                 // Method kawa/lib/ports.display:(Ljava/lang/Object;)V
      16: invokestatic  #49                 // Method kawa/lib/ports.newline:()V
      19: return        

  public static int[] createArray(java.lang.Object);
    Code:
       0: aload_0       
       1: invokestatic  #16                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       4: checkcast     #18                 // class java/lang/Number
       7: invokevirtual #22                 // Method java/lang/Number.intValue:()I
      10: newarray       int
      12: areturn       

  public static java.lang.Object createArray$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #28                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: astore_2      
       5: aload_1       
       6: invokevirtual #31                 // Method gnu/mapping/CallContext.checkDone:()I
       9: ifeq          14
      12: aload_1       
      13: areturn       
      14: aload_2       
      15: invokestatic  #35                 // Method createArray:(Ljava/lang/Object;)[I
      18: areturn       

  public static {};
    Code:
       0: ldc           #84                 // String createArray
       2: invokestatic  #90                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #74                 // Field Lit1:Lgnu/mapping/SimpleSymbol;
       8: bipush        10
      10: invokestatic  #95                 // Method gnu/math/IntNum.valueOf:(I)Lgnu/math/IntNum;
      13: putstatic     #39                 // Field Lit0:Lgnu/math/IntNum;
      16: new           #2                  // class CreateArray1
      19: dup           
      20: invokespecial #60                 // Method "<init>":()V
      23: putstatic     #64                 // Field $instance:LCreateArray1;
      26: ldc           #2                  // class CreateArray1
      28: astore_0      
      29: aload_0       
      30: ldc           #2                  // class CreateArray1
      32: ldc           #66                 // String createArray$check
      34: invokestatic  #70                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      37: getstatic     #74                 // Field Lit1:Lgnu/mapping/SimpleSymbol;
      40: sipush        4097
      43: invokestatic  #80                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      46: putstatic     #83                 // Field createArray:Lgnu/expr/CompiledProc;
      49: return        

  public CreateArray1();
    Code:
       0: aload_0       
       1: invokespecial #54                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #59                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
