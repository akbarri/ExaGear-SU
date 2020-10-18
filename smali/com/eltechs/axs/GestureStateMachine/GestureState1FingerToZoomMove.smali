.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerToZoomMove.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field private static final timerPeriodMs:I = 0x28


# instance fields
.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 32
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 33
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 34
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->notifyTimer()V

    return-void
.end method

.method private notifyTimer()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 75
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorHost(FF)V

    .line 76
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->refreshZoom()V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 45
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$5;

    const-wide/16 v1, 0x28

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove$5;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    .line 57
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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

    .line 58
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 59
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFingerCountLastChanged()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getYWhenFingerCountLastChanged()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorBoth(FF)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->cancel()V

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

    .line 91
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 103
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 97
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 85
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
