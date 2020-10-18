.class public Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState2FingerMeasureSpeed.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_SCROLL:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private distances:[D

.field private final fingerFlashTime:F

.field private final measureTime:I

.field private moveFlag:[Z

.field private moveTime:J

.field private final standingFingerMaxMove:F

.field private timer:Lcom/eltechs/axs/helpers/OneShotTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 17
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 19
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 21
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_SCROLL:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 23
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$5;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$5;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 25
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$6;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$6;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFF)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    const/4 p1, 0x2

    .line 27
    new-array v0, p1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->distances:[D

    .line 28
    new-array p1, p1, [Z

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveTime:J

    .line 37
    iput p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->measureTime:I

    .line 38
    iput p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->standingFingerMaxMove:F

    .line 39
    iput p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->fingerFlashTime:F

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private recalcDistance(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/Finger;

    invoke-virtual {v2}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/Finger;

    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/axs/Finger;

    invoke-virtual {v4}, Lcom/eltechs/axs/Finger;->getXWhenFingerCountLastChanged()F

    move-result v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/Finger;

    invoke-virtual {v5}, Lcom/eltechs/axs/Finger;->getYWhenFingerCountLastChanged()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result v2

    float-to-double v2, v2

    .line 72
    iget-object v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->distances:[D

    aget-wide v5, v4, v1

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    .line 73
    aput-wide v2, v4, v1

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->distances:[D

    aget-wide v3, v2, v1

    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->standingFingerMaxMove:F

    float-to-double v5, v2

    cmpg-double v2, v3, v5

    if-gez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 47
    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 49
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;

    iget v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->measureTime:I

    int-to-long v3, v3

    invoke-direct {v0, p0, v3, v4}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed$7;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    aput-boolean v2, v0, v2

    .line 57
    aput-boolean v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->distances:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    .line 59
    aput-wide v3, v0, v1

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveTime:J

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p2}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->recalcDistance(Ljava/util/List;)V

    .line 109
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    const/4 p2, 0x0

    aget-boolean v0, p1, p2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_SCROLL:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    aget-boolean p2, p1, p2

    if-nez p2, :cond_1

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_3

    .line 112
    :cond_1
    iget-wide p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveTime:J

    .line 115
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->fingerFlashTime:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 116
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_3
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

    .line 126
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 104
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyTimeout()V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->recalcDistance(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->moveFlag:[Z

    aget-boolean v1, v0, v1

    aget-boolean v0, v0, v2

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_1

    .line 95
    :cond_1
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_SCROLL:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_1
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

    .line 100
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
