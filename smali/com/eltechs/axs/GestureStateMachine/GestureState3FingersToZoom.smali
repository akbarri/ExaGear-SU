.class public Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState3FingersToZoom.java"

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

    .line 45
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 46
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 47
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 48
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->notifyTimer()V

    return-void
.end method

.method private getDistanceBetweenFingers(Ljava/util/List;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)F"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 132
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 133
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    const/4 v2, 0x2

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/Finger;

    .line 135
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v3

    .line 136
    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    .line 135
    invoke-static {v2, v3, v4, v1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result v1

    .line 137
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    .line 138
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    .line 137
    invoke-static {v2, v0, v3, p1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p1

    .line 140
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private notifyTimer()V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v1

    .line 99
    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getDistanceBetweenFingers(Ljava/util/List;)F

    move-result v0

    .line 100
    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->distance:F

    div-float v2, v0, v2

    float-to-double v2, v2

    .line 101
    iput v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->distance:F

    .line 103
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed()Z

    move-result v0

    .line 104
    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->insertZoomFactorChange(D)V

    .line 109
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->refreshZoom()V

    .line 110
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorBoth(FF)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorHost(FF)V

    .line 119
    :goto_1
    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->refreshZoom()V

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 59
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$5;

    const-wide/16 v1, 0x28

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom$5;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    .line 71
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 74
    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getDistanceBetweenFingers(Ljava/util/List;)F

    move-result v1

    iput v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->distance:F

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    .line 76
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getXWhenFingerCountLastChanged()F

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getYWhenFingerCountLastChanged()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorBoth(FF)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->distance:F

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->mainFinger:Lcom/eltechs/axs/Finger;

    .line 85
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

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

    .line 155
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 167
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 161
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 149
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState3FingersToZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
