.class Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$2;
.super Lcom/eltechs/axs/helpers/OneShotTimer;
.source "FSMStateWaitForTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->notifyBecomeActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;J)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/OneShotTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$2;->this$0:Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;

    sget-object v1, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->TIMEOUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->access$000(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
