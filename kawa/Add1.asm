Compiled from "Add1.scm"
public class Add1 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc add;

  public static Add1 $instance;

  static final gnu.mapping.SimpleSymbol Lit0;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: return        

  public static java.lang.Object add(java.lang.Object, java.lang.Object);
    Code:
       0: iconst_1      
       1: aload_0       
       2: aload_1       
       3: invokestatic  #16                 // Method gnu/kawa/functions/AddOp.apply2:(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
       6: areturn       

  public static java.lang.Object add$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #22                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: astore_2      
       5: aload_1       
       6: invokevirtual #22                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       9: astore_3      
      10: aload_1       
      11: invokevirtual #26                 // Method gnu/mapping/CallContext.checkDone:()I
      14: ifeq          19
      17: aload_1       
      18: areturn       
      19: aload_2       
      20: aload_3       
      21: invokestatic  #30                 // Method add:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      24: areturn       

  public static {};
    Code:
       0: ldc           #67                 // String add
       2: invokestatic  #73                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #57                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
       8: new           #2                  // class Add1
      11: dup           
      12: invokespecial #43                 // Method "<init>":()V
      15: putstatic     #47                 // Field $instance:LAdd1;
      18: ldc           #2                  // class Add1
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class Add1
      24: ldc           #49                 // String add$check
      26: invokestatic  #53                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #57                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        8194
      35: invokestatic  #63                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #66                 // Field add:Lgnu/expr/CompiledProc;
      41: return        

  public Add1();
    Code:
       0: aload_0       
       1: invokespecial #36                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #42                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
