.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateFingersMoveToKey.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

.field private leftFinger:Lcom/eltechs/axs/Finger;

.field private final rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

.field private rightFinger:Lcom/eltechs/axs/Finger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/PointerMoveToKeyAdapter;Lcom/eltechs/axs/PointerMoveToKeyAdapter;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 40
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    .line 41
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    return-void
.end method

.method private isFingerAtRightArea(Lcom/eltechs/axs/Finger;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 130
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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

    .line 131
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 132
    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->isFingerAtRightArea(Lcom/eltechs/axs/Finger;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    goto :goto_1

    .line 137
    :cond_1
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerEntered(FF)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerEntered(FF)V

    :cond_3
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerExited(FF)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerExited(FF)V

    :cond_1
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

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

    .line 52
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerMove(FF)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_1

    .line 57
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerMove(FF)V

    :cond_1
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

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

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

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
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

    .line 97
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 114
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerExited(FF)V

    .line 106
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_1

    .line 109
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerExited(FF)V

    .line 110
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    goto :goto_0

    .line 100
    :pswitch_1
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 69
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    goto :goto_0

    .line 83
    :pswitch_0
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->isFingerAtRightArea(Lcom/eltechs/axs/Finger;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    .line 75
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->rightFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerEntered(FF)V

    goto :goto_0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    .line 79
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftAdapter:Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {p2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateFingersMoveToKey;->leftFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->pointerEntered(FF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
