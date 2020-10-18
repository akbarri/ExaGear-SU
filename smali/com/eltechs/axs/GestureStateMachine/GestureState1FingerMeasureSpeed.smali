.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerMeasureSpeed.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final aimingFingerMaxMove:F

.field private distance:D

.field private final measureTime:I

.field private final standingFingerMaxMove:F

.field private final tappingFingerMaxMove:F

.field private timer:Lcom/eltechs/axs/helpers/OneShotTimer;

.field private touchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 47
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 49
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 51
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 53
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$5;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$5;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 55
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$6;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$6;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 57
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$7;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$7;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 59
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$8;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$8;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 69
    iput p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->measureTime:I

    .line 70
    iput p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->standingFingerMaxMove:F

    .line 71
    iput p5, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->tappingFingerMaxMove:F

    .line 72
    iput p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->aimingFingerMaxMove:F

    const-wide/16 p1, 0x0

    .line 73
    iput-wide p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->notifyTimeout()V

    return-void
.end method

.method private notifyTimeout()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 127
    invoke-direct {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->recalcDistance(Lcom/eltechs/axs/Finger;)V

    .line 129
    iget-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->standingFingerMaxMove:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 131
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->aimingFingerMaxMove:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 134
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_1

    .line 137
    :cond_2
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_1
    return-void
.end method

.method private recalcDistance(Lcom/eltechs/axs/Finger;)V
    .locals 4

    .line 111
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    .line 112
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v2

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result p1

    .line 111
    invoke-static {v0, v1, v2, p1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p1

    float-to-double v0, p1

    .line 114
    iget-wide v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    cmpg-double p1, v2, v0

    if-gez p1, :cond_0

    .line 116
    iput-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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

    .line 81
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 82
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->measureTime:I

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed$9;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->start()Landroid/os/CountDownTimer;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->touchTime:J

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

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

    .line 166
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->recalcDistance(Lcom/eltechs/axs/Finger;)V

    .line 167
    iget-wide p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    iget v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->aimingFingerMaxMove:F

    float-to-double v0, v0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_0

    .line 169
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 182
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_MOVED_IN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 176
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_MOVED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

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

    .line 150
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 152
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->recalcDistance(Lcom/eltechs/axs/Finger;)V

    .line 154
    iget-wide p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->distance:D

    iget v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->tappingFingerMaxMove:F

    float-to-double v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    .line 156
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_0

    .line 159
    :cond_0
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_0
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

    .line 144
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method
