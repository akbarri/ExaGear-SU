.class public Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateWaitForTimeout.java"


# static fields
.field public static final TIMEOUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final timeoutMs:I

.field private timer:Lcom/eltechs/axs/helpers/OneShotTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$1;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->TIMEOUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 22
    iput p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->timeoutMs:I

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 28
    new-instance v0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$2;

    iget v1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->timeoutMs:I

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout$2;-><init>(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;J)V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForTimeout;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    return-void
.end method
