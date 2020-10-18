.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerMoveToMouseDragAndDrop.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

.field private final cancelBy2ndFinger:Z

.field private f:Lcom/eltechs/axs/Finger;

.field private final moveThreshold:F

.field private moveThresholdExceeded:Z

.field final pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

.field private final useMoveThreshold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 49
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 50
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

    .line 51
    iput-boolean p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->cancelBy2ndFinger:Z

    .line 52
    iput p5, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->moveThreshold:F

    const/4 p1, 0x0

    cmpl-float p1, p5, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    iput-boolean p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->useMoveThreshold:Z

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 61
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v2

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;->start(FF)V

    .line 70
    iput-boolean v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->moveThresholdExceeded:Z

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    .line 77
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_2

    .line 85
    iget-boolean p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->useMoveThreshold:Z

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;->move(FF)V

    goto :goto_0

    .line 90
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->moveThresholdExceeded:Z

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v0

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p1

    iget p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->moveThreshold:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->moveThresholdExceeded:Z

    .line 98
    :cond_1
    iget-boolean p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->moveThresholdExceeded:Z

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;->move(FF)V

    :cond_2
    :goto_0
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

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

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

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
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

    .line 109
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;->stop(FF)V

    .line 112
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_0
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
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

    .line 125
    iget-boolean p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->cancelBy2ndFinger:Z

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->adapter:Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->f:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;->cancel(FF)V

    .line 128
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_0
    return-void
.end method
