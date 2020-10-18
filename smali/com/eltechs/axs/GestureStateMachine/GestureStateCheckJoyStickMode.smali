.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateCheckJoyStickMode.java"


# static fields
.field public static JOYSTICK_MODE_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static JOYSTICK_MODE_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 9
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->JOYSTICK_MODE_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 15
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->getState()Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    if-ne v0, v1, :cond_0

    .line 20
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->JOYSTICK_MODE_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckJoyStickMode;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_0
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
