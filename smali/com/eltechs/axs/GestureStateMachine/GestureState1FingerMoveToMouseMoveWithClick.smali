.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerMoveToMouseMoveWithClick.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private f:Lcom/eltechs/axs/Finger;

.field private final moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 45
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 46
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 47
    iput-object p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 55
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->f:Lcom/eltechs/axs/Finger;

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->prepareMoving(FF)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->f:Lcom/eltechs/axs/Finger;

    .line 64
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->f:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    .line 73
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    sget-object p2, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->setLastMoveMethod(Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;)V

    :cond_0
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

    .line 99
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_0
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

    .line 90
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_0
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

    .line 80
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 82
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->click()V

    .line 83
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->finalizeClick()V

    :cond_0
    return-void
.end method
