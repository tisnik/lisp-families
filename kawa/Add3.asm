Compiled from "Add3.scm"
public class Add3 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc add;

  public static Add3 $instance;

  static final gnu.mapping.SimpleSymbol Lit0;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: return        

  public static float add(float, float);
    Code:
       0: fload_0       
       1: fload_1       
       2: fadd          
       3: freturn       

  public static java.lang.Object add$check(gnu.mapping.Procedure, gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: invokevirtual #14                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
       4: invokestatic  #20                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
       7: astore_3      
       8: aload_3       
       9: instanceof    #22                 // class java/lang/Number
      12: ifeq          77
      15: aload_3       
      16: checkcast     #22                 // class java/lang/Number
      19: invokevirtual #26                 // Method java/lang/Number.floatValue:()F
      22: fstore_2      
      23: aload_1       
      24: invokevirtual #14                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
      27: invokestatic  #20                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
      30: astore        5
      32: aload         5
      34: instanceof    #22                 // class java/lang/Number
      37: ifeq          69
      40: aload         5
      42: checkcast     #22                 // class java/lang/Number
      45: invokevirtual #26                 // Method java/lang/Number.floatValue:()F
      48: fstore        4
      50: aload_1       
      51: invokevirtual #30                 // Method gnu/mapping/CallContext.checkDone:()I
      54: ifeq          59
      57: aload_1       
      58: areturn       
      59: fload_2       
      60: fload         4
      62: invokestatic  #34                 // Method add:(FF)F
      65: invokestatic  #40                 // Method java/lang/Float.valueOf:(F)Ljava/lang/Float;
      68: areturn       
      69: aload_1       
      70: dup           
      71: ldc           #41                 // int -786431
      73: invokevirtual #45                 // Method gnu/mapping/CallContext.matchError:(I)V
      76: areturn       
      77: aload_1       
      78: dup           
      79: ldc           #46                 // int -786432
      81: invokevirtual #45                 // Method gnu/mapping/CallContext.matchError:(I)V
      84: areturn       

  public static {};
    Code:
       0: ldc           #83                 // String add
       2: invokestatic  #88                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #73                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
       8: new           #2                  // class Add3
      11: dup           
      12: invokespecial #59                 // Method "<init>":()V
      15: putstatic     #63                 // Field $instance:LAdd3;
      18: ldc           #2                  // class Add3
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class Add3
      24: ldc           #65                 // String add$check
      26: invokestatic  #69                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #73                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        8194
      35: invokestatic  #79                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #82                 // Field add:Lgnu/expr/CompiledProc;
      41: return        

  public Add3();
    Code:
       0: aload_0       
       1: invokespecial #52                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #58                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
