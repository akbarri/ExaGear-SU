.class public Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateRunRunnable.java"


# static fields
.field public static COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable$1;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;->COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 27
    sget-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;->COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
