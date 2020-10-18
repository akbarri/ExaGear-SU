.class Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;
.super Lcom/eltechs/axs/helpers/InfiniteTimer;
.source "FSMStateWaitForXServerActivityHasFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->notifyBecomeActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;J)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/InfiniteTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->access$000(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;)Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->isActiveState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->access$100(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;)Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;

    .line 46
    invoke-static {p1}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->access$100(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;)Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/eltechs/axs/activities/XServerDisplayActivity;

    if-ne p1, p2, :cond_0

    .line 48
    iget-object p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;

    sget-object p2, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->SUCCESS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->access$200(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_0
    return-void
.end method
