.class Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;
.super Lcom/eltechs/axs/helpers/OneShotTimer;
.source "GestureState2FingerMeasureSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->notifyBecomeActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;J)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/OneShotTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getMachine()Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->isActiveState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->notifyTimeout()V

    :cond_0
    return-void
.end method
