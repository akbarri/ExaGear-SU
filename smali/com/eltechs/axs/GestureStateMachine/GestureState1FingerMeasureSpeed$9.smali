.class Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;
.super Lcom/eltechs/axs/helpers/OneShotTimer;
.source "GestureState1FingerMeasureSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->notifyBecomeActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;J)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/OneShotTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getMachine()Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->isActiveState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;->this$0:Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    invoke-static {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;)V

    :cond_0
    return-void
.end method
