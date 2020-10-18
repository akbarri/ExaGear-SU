.class public Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateWaitForXServerActivityHasFocus.java"


# static fields
.field public static final SUCCESS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final as:Lcom/eltechs/axs/applicationState/ApplicationStateBase;

.field private final timeoutMs:I

.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$1;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->SUCCESS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(ILcom/eltechs/axs/applicationState/ApplicationStateBase;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 32
    iput p1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->timeoutMs:I

    .line 33
    iput-object p2, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->as:Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;)Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->getMachine()Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;)Lcom/eltechs/axs/applicationState/ApplicationStateBase;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->as:Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 39
    new-instance v0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;

    iget v1, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->timeoutMs:I

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus$2;-><init>(Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;J)V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->cancel()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/eltechs/axs/helpers/FSM/FSMStateWaitForXServerActivityHasFocus;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    return-void
.end method
