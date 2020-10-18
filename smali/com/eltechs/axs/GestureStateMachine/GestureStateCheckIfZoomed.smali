.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateCheckIfZoomed.java"


# static fields
.field public static ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 15
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
