.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerMoveToMouseMoveWithWait.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private f:Lcom/eltechs/axs/Finger;

.field private final moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 15
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 30
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 31
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 40
    :cond_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->f:Lcom/eltechs/axs/Finger;

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->prepareMoving(FF)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->f:Lcom/eltechs/axs/Finger;

    .line 47
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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

    .line 51
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->f:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    .line 53
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

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

    .line 64
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 58
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 25
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithWait;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
