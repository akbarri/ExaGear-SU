.class public Lcom/eltechs/axs/MovementAccumulator;
.super Ljava/lang/Object;
.source "MovementAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/MovementAccumulator$Direction;
    }
.end annotation


# instance fields
.field private axis:F

.field private direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

.field private moveDeltaPixels:F

.field private movementStartTimestamp:J

.field private movementUnitsAccumulated:F

.field private final movementUnitsInOnePixel:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lcom/eltechs/axs/MovementAccumulator;->moveDeltaPixels:F

    .line 60
    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsInOnePixel:F

    return-void
.end method

.method private handlePointPositionChange(F)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 85
    iget v0, p0, Lcom/eltechs/axs/MovementAccumulator;->axis:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 86
    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->axis:F

    .line 88
    iget p1, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsAccumulated:F

    iget v1, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsInOnePixel:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsAccumulated:F

    return-void
.end method

.method private movementStopNeeded(FZ)Z
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p2, 0x40a00000    # 5.0f

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    .line 106
    :cond_0
    iget p2, p0, Lcom/eltechs/axs/MovementAccumulator;->moveDeltaPixels:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getAxis()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/eltechs/axs/MovementAccumulator;->axis:F

    return v0
.end method

.method public getDirection()Lcom/eltechs/axs/MovementAccumulator$Direction;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    return-object v0
.end method

.method public getMovementStartTimestamp()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/eltechs/axs/MovementAccumulator;->movementStartTimestamp:J

    return-wide v0
.end method

.method public getMovementUnitsAccumulated()F
    .locals 1

    .line 196
    iget v0, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsAccumulated:F

    return v0
.end method

.method public processFingerMovement(ZFJ)V
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/eltechs/axs/MovementAccumulator;->getAxis()F

    move-result v0

    sub-float v0, p2, v0

    .line 121
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 123
    sget-object v2, Lcom/eltechs/axs/MovementAccumulator$1;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    iget-object v3, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-virtual {v3}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 161
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    goto :goto_0

    :pswitch_0
    cmpg-float p3, v0, v3

    if-gez p3, :cond_0

    .line 152
    invoke-direct {p0, p2}, Lcom/eltechs/axs/MovementAccumulator;->handlePointPositionChange(F)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/eltechs/axs/MovementAccumulator;->movementStopNeeded(FZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p0, p2}, Lcom/eltechs/axs/MovementAccumulator;->stop(F)V

    goto :goto_0

    :pswitch_1
    cmpl-float p3, v0, v3

    if-lez p3, :cond_1

    .line 140
    invoke-direct {p0, p2}, Lcom/eltechs/axs/MovementAccumulator;->handlePointPositionChange(F)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/eltechs/axs/MovementAccumulator;->movementStopNeeded(FZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p0, p2}, Lcom/eltechs/axs/MovementAccumulator;->stop(F)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget p1, p0, Lcom/eltechs/axs/MovementAccumulator;->moveDeltaPixels:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_3

    cmpl-float p1, v0, v3

    if-lez p1, :cond_2

    .line 130
    sget-object p1, Lcom/eltechs/axs/MovementAccumulator$Direction;->ASC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/eltechs/axs/MovementAccumulator;->start(Lcom/eltechs/axs/MovementAccumulator$Direction;FJ)V

    goto :goto_0

    .line 133
    :cond_2
    sget-object p1, Lcom/eltechs/axs/MovementAccumulator$Direction;->DESC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/eltechs/axs/MovementAccumulator;->start(Lcom/eltechs/axs/MovementAccumulator$Direction;FJ)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset(F)V
    .locals 2

    .line 71
    sget-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    iput-object v0, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    .line 72
    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->axis:F

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsAccumulated:F

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/eltechs/axs/MovementAccumulator;->movementStartTimestamp:J

    return-void
.end method

.method public setAxis(F)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->axis:F

    return-void
.end method

.method public setDirection(Lcom/eltechs/axs/MovementAccumulator$Direction;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    return-void
.end method

.method public setMovementUnitsAccumulated(F)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/eltechs/axs/MovementAccumulator;->movementUnitsAccumulated:F

    return-void
.end method

.method public start(Lcom/eltechs/axs/MovementAccumulator$Direction;FJ)V
    .locals 1

    .line 177
    iput-object p1, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    .line 178
    iget-object p1, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    sget-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Movement in neutral direction is not a movement at all"

    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 179
    iput-wide p3, p0, Lcom/eltechs/axs/MovementAccumulator;->movementStartTimestamp:J

    .line 180
    invoke-direct {p0, p2}, Lcom/eltechs/axs/MovementAccumulator;->handlePointPositionChange(F)V

    return-void
.end method

.method public stop(F)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/eltechs/axs/MovementAccumulator;->direction:Lcom/eltechs/axs/MovementAccumulator$Direction;

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/MovementAccumulator;->reset(F)V

    return-void
.end method
