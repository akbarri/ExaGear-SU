.class public Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStatePressKey.java"


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final keyCode:Lcom/eltechs/axs/KeyCodesX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 4

    .line 29
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getKeyboardReporter()Lcom/eltechs/axs/KeyEventReporter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeys([Lcom/eltechs/axs/KeyCodesX;)V

    .line 30
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
