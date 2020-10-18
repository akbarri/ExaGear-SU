.class public Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState2FingersToZoom.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field private static final timerPeriodMs:I = 0x28


# instance fields
.field private distance:F

.field private mainFinger:Lcom/eltechs/axs/Finger;

.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 41
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 42
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 43
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->notifyTimer()V

    return-void
.end method

.method private getDistanceBetweenFingers(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)F"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/Finger;

    .line 129
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    .line 130
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    .line 129
    invoke-static {v1, v0, v2, p1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p1

    return p1
.end method

.method private notifyTimer()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v1

    .line 94
    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getDistanceBetweenFingers(Ljava/util/List;)F

    move-result v0

    .line 95
    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->distance:F

    div-float v2, v0, v2

    float-to-double v2, v2

    .line 96
    iput v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->distance:F

    .line 98
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed()Z

    move-result v0

    .line 99
    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->insertZoomFactorChange(D)V

    .line 104
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->refreshZoom()V

    .line 105
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorBoth(FF)V

    goto :goto_1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorHost(FF)V

    .line 114
    :goto_1
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->refreshZoom()V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 54
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$5;

    const-wide/16 v1, 0x28

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom$5;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 64
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    .line 66
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 69
    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getDistanceBetweenFingers(Ljava/util/List;)F

    move-result v1

    iput v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->distance:F

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    .line 71
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getXWhenFingerCountLastChanged()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getYWhenFingerCountLastChanged()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorBoth(FF)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->distance:F

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

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

    .line 145
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 157
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 151
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 139
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
