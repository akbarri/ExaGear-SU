.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerMoveToScrollSync.java"


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final breakIfFingerReleased:Z

.field private final doAdjustPointerPosition:Z

.field private final fingerLocationPollIntervalMs:J

.field private final moveThresholdPixels:F

.field private final movementUnitsInOnePixelX:F

.field private final movementUnitsInOnePixelY:F

.field private movementX:Lcom/eltechs/axs/MovementAccumulator;

.field private movementY:Lcom/eltechs/axs/MovementAccumulator;

.field private final pointerMargin:I

.field private savedFinger:Lcom/eltechs/axs/Finger;

.field private final scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;

.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;FFFZIJZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 73
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;

    .line 74
    iput p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementUnitsInOnePixelX:F

    .line 75
    iput p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementUnitsInOnePixelY:F

    .line 76
    iput p5, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->moveThresholdPixels:F

    .line 77
    iput-boolean p6, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->doAdjustPointerPosition:Z

    .line 78
    iput p7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->pointerMargin:I

    .line 79
    iput-wide p8, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->fingerLocationPollIntervalMs:J

    .line 80
    iput-boolean p10, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->breakIfFingerReleased:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->notifyTimer()V

    return-void
.end method

.method private changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 177
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/MovementAccumulator;->setMovementUnitsAccumulated(F)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/MovementAccumulator;->stop(F)V

    :goto_0
    return-void
.end method

.method private notifyTimer()V
    .locals 8

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    .line 192
    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v3

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->processFingerMovement(ZFJ)V

    .line 195
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    .line 196
    invoke-virtual {v3}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v3

    .line 195
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->processFingerMovement(ZFJ)V

    .line 199
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v0}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v1}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v2}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v2

    sget-object v3, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    .line 203
    invoke-virtual {v2}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v2

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 205
    :goto_0
    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator;->getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v3

    sget-object v7, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    if-eq v3, v7, :cond_1

    iget-object v3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    .line 206
    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator;->getMovementUnitsAccumulated()F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_1

    move v4, v5

    .line 209
    :cond_1
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->scrollImpl(Lcom/eltechs/axs/MovementAccumulator$Direction;Lcom/eltechs/axs/MovementAccumulator$Direction;ZZ)V

    if-eqz v2, :cond_2

    .line 212
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V

    :cond_2
    if-eqz v4, :cond_3

    .line 217
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->changeMovementUnits(Lcom/eltechs/axs/MovementAccumulator;F)V

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->breakIfFingerReleased:Z

    if-nez v0, :cond_4

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    .line 228
    :cond_4
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_5
    return-void
.end method

.method private scrollImpl(Lcom/eltechs/axs/MovementAccumulator$Direction;Lcom/eltechs/axs/MovementAccumulator$Direction;ZZ)V
    .locals 2

    .line 134
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    .line 135
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    if-eqz p3, :cond_0

    .line 139
    sget-object p3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    invoke-virtual {p1}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->RIGHT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    goto :goto_0

    .line 142
    :pswitch_1
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->LEFT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 152
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    invoke-virtual {p2}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 158
    :pswitch_2
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    goto :goto_1

    .line 155
    :pswitch_3
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    .line 163
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;

    const/4 p2, 0x1

    invoke-interface {p1, v0, v1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;->scroll(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;I)V

    return-void

    nop

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

    .line 86
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync$2;

    iget-wide v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->fingerLocationPollIntervalMs:J

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync$2;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;J)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    .line 98
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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

    .line 99
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    .line 100
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator;

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementUnitsInOnePixelX:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/MovementAccumulator;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    .line 101
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator;

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementUnitsInOnePixelY:F

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/MovementAccumulator;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementX:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->movementY:Lcom/eltechs/axs/MovementAccumulator;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->savedFinger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    .line 106
    iget-boolean v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->doAdjustPointerPosition:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iget v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->pointerMargin:I

    invoke-static {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/Helpers;->adjustPointerPosition(Lcom/eltechs/axs/xserver/ViewFacade;I)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;->notifyStart()V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->scrollAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;

    invoke-interface {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;->notifyStop()V

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->cancel()V

    return-void
.end method
