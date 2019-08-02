Compiled from "Add2.scm"
public class Add2 extends gnu.expr.ModuleBody implements java.lang.Runnable,gnu.expr.RunnableModule {
  public static final gnu.expr.CompiledProc add;

  public static Add2 $instance;

  static final gnu.mapping.SimpleSymbol Lit0;

  public final void run(gnu.mapping.CallContext);
    Code:
       0: aload_1       
       1: getfield      #8                  // Field gnu/mapping/CallContext.consumer:Lgnu/lists/Consumer;
       4: astore_2      
       5: return        

  public static int add(int, int);
    Code:
       0: iload_0       
       1: iload_1       
       2: iadd          
       3: ireturn       

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
      19: invokevirtual #26                 // Method java/lang/Number.intValue:()I
      22: istore_2      
      23: aload_1       
      24: invokevirtual #14                 // Method gnu/mapping/CallContext.getNextArg:()Ljava/lang/Object;
      27: invokestatic  #20                 // Method gnu/mapping/Promise.force:(Ljava/lang/Object;)Ljava/lang/Object;
      30: astore        5
      32: aload         5
      34: instanceof    #22                 // class java/lang/Number
      37: ifeq          69
      40: aload         5
      42: checkcast     #22                 // class java/lang/Number
      45: invokevirtual #26                 // Method java/lang/Number.intValue:()I
      48: istore        4
      50: aload_1       
      51: invokevirtual #29                 // Method gnu/mapping/CallContext.checkDone:()I
      54: ifeq          59
      57: aload_1       
      58: areturn       
      59: iload_2       
      60: iload         4
      62: invokestatic  #33                 // Method add:(II)I
      65: invokestatic  #39                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      68: areturn       
      69: aload_1       
      70: dup           
      71: ldc           #40                 // int -786431
      73: invokevirtual #44                 // Method gnu/mapping/CallContext.matchError:(I)V
      76: areturn       
      77: aload_1       
      78: dup           
      79: ldc           #45                 // int -786432
      81: invokevirtual #44                 // Method gnu/mapping/CallContext.matchError:(I)V
      84: areturn       

  public static {};
    Code:
       0: ldc           #82                 // String add
       2: invokestatic  #87                 // Method gnu/mapping/Symbol.valueOf:(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
       5: putstatic     #72                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
       8: new           #2                  // class Add2
      11: dup           
      12: invokespecial #58                 // Method "<init>":()V
      15: putstatic     #62                 // Field $instance:LAdd2;
      18: ldc           #2                  // class Add2
      20: astore_0      
      21: aload_0       
      22: ldc           #2                  // class Add2
      24: ldc           #64                 // String add$check
      26: invokestatic  #68                 // Method gnu/mapping/Procedure.lookupApplyHandle:(Ljava/lang/Class;Ljava/lang/String;)Lgnu/mapping/CallContext$MethodHandle;
      29: getstatic     #72                 // Field Lit0:Lgnu/mapping/SimpleSymbol;
      32: sipush        8194
      35: invokestatic  #78                 // Method gnu/expr/CompiledProc.makeResultToObject:(Ljava/lang/Object;Lgnu/mapping/CallContext$MethodHandle;Ljava/lang/Object;I)Lgnu/expr/CompiledProc;
      38: putstatic     #81                 // Field add:Lgnu/expr/CompiledProc;
      41: return        

  public Add2();
    Code:
       0: aload_0       
       1: invokespecial #51                 // Method gnu/expr/ModuleBody."<init>":()V
       4: aload_0       
       5: invokestatic  #57                 // Method gnu/expr/ModuleInfo.register:(Ljava/lang/Object;)V
       8: return        
}
