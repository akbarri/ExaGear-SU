.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateClickToFingerFirstCoords.java"


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 28
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getTouchArea()Lcom/eltechs/axs/TouchArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea;->getLastFingerAction()Lcom/eltechs/axs/TouchArea$FingerAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea$FingerAction;->getFinger()Lcom/eltechs/axs/Finger;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;->click(FF)V

    .line 37
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;->finalizeClick(FF)V

    .line 39
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
