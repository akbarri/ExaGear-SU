.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerMoveToScrollAsync.java"


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field private static final timerPeriodMs:J = 0x28L


# instance fields
.field private final cancelIfFingerReleased:Z

.field private final doAdjustPointerPosition:Z

.field private final moveThresholdPixels:F

.field private final movementUnitsInOnePixelX:F

.field private final movementUnitsInOnePixelY:F

.field private movementX:Lcom/eltechs/axs/MovementAccumulator;

.field private movementY:Lcom/eltechs/axs/MovementAccumulator;

.field private final pointerMargin:I

.field private savedFinger:Lcom/eltechs/axs/Finger;

.field private final scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 69
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    .line 70
    iput p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementUnitsInOnePixelX:F

    .line 71
    iput p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementUnitsInOnePixelY:F

    .line 72
    iput p5, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->moveThresholdPixels:F

    .line 73
    iput-boolean p6, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->doAdjustPointerPosition:Z

    .line 74
    iput p7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->pointerMargin:I

    .line 75
    iput-boolean p8, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->cancelIfFingerReleased:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->notifyTimer()V

    return-void
.end method

.method private changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V
    .locals 4

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator;->getMovementStartTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 170
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/MovementAccumulator;->stop(F)V

    :cond_0
    return-void
.end method

.method private notifyTimer()V
    .locals 8

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    .line 182
    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v3

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->processFingerMovement(ZFJ)V

    .line 185
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    .line 186
    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v3

    .line 185
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->processFingerMovement(ZFJ)V

    .line 189
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v0}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v1}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v2}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v2

    sget-object v3, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    .line 193
    invoke-virtual {v2}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v2

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v3

    sget-object v7, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    if-eq v3, v7, :cond_1

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    .line 196
    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_1

    move v4, v5

    .line 199
    :cond_1
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->scrollImpl(Lcom/eltechs/axs/MovementAccumulator$Direction;Lcom/eltechs/axs/MovementAccumulator$Direction;ZZ)V

    if-eqz v2, :cond_2

    .line 202
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V

    :cond_2
    if-eqz v4, :cond_3

    .line 207
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->cancelIfFingerReleased:Z

    if-nez v0, :cond_4

    if-nez v2, :cond_7

    if-nez v4, :cond_7

    :cond_4
    if-nez v2, :cond_5

    if-eqz v4, :cond_6

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    sget-object v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->setScrolling(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;)V

    .line 223
    :cond_6
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_7
    return-void
.end method

.method private scrollImpl(Lcom/eltechs/axs/MovementAccumulator$Direction;Lcom/eltechs/axs/MovementAccumulator$Direction;ZZ)V
    .locals 2

    .line 128
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    .line 129
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    if-eqz p3, :cond_0

    .line 133
    sget-object p3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->RIGHT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->LEFT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 146
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    invoke-virtual {p2}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 152
    :pswitch_2
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    goto :goto_1

    .line 149
    :pswitch_3
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    .line 157
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    invoke-interface {p1, v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->setScrolling(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 81
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$2;

    const-wide/16 v1, 0x28

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$2;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 91
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    .line 93
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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

    .line 94
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    .line 95
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator;

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementUnitsInOnePixelX:F

    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->moveThresholdPixels:F

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/MovementAccumulator;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    .line 96
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator;

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementUnitsInOnePixelY:F

    iget v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->moveThresholdPixels:F

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/MovementAccumulator;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    .line 101
    iget-boolean v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->doAdjustPointerPosition:Z

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->pointerMargin:I

    invoke-static {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/Helpers;->adjustPointerPosition(Lcom/eltechs/axs/xserver/ViewFacade;I)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->notifyStart()V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;->notifyStop()V

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->cancel()V

    return-void
.end method
