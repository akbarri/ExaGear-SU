.class public Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState2FingerMoveToMouseMoveWithClick.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private final moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 16
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 18
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 20
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 27
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 28
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 29
    iput-object p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 6

    .line 33
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 40
    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 41
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/axs/Finger;

    invoke-virtual {v4}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/Finger;

    invoke-virtual {v5}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    .line 41
    invoke-interface {v1, v4, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->prepareMoving(FF)V

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->click()V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    const/4 v0, 0x0

    .line 53
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/Finger;

    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 54
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p2

    add-float/2addr v0, p2

    div-float/2addr v0, v3

    .line 52
    invoke-interface {p1, v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    .line 55
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    sget-object p2, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->setLastMoveMethod(Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;)V

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

    .line 60
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 68
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->finalizeClick()V

    .line 69
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 73
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->clickAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->finalizeClick()V

    .line 74
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMoveToMouseMoveWithClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
