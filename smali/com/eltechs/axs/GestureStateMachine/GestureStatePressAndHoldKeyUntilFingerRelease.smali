.class public Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStatePressAndHoldKeyUntilFingerRelease.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final keyCode:Lcom/eltechs/axs/KeyCodesX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 27
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    .line 64
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    .line 56
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressAndHoldKeyUntilFingerRelease;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
