.class public Lcom/eltechs/axs/FingerSweepAdapter;
.super Ljava/lang/Object;
.source "FingerSweepAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/PointerEventListener;


# instance fields
.field private final acceleration:Z

.field private final ignoreX:Z

.field private final ignoreY:Z

.field private final pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

.field private pointerX:F

.field private pointerY:F

.field private final sensitivity:I

.field private time:J


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;IZZZ)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t ignore both coordinates"

    .line 39
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    .line 42
    iput p2, p0, Lcom/eltechs/axs/FingerSweepAdapter;->sensitivity:I

    .line 43
    iput-boolean p3, p0, Lcom/eltechs/axs/FingerSweepAdapter;->acceleration:Z

    .line 44
    iput-boolean p4, p0, Lcom/eltechs/axs/FingerSweepAdapter;->ignoreX:Z

    .line 45
    iput-boolean p5, p0, Lcom/eltechs/axs/FingerSweepAdapter;->ignoreY:Z

    return-void
.end method

.method private getAcceleratedValue(F)F
    .locals 4

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-boolean v2, p0, Lcom/eltechs/axs/FingerSweepAdapter;->acceleration:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/eltechs/axs/FingerSweepAdapter;->time:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-wide v2, p0, Lcom/eltechs/axs/FingerSweepAdapter;->time:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float v2, p1, v2

    .line 66
    iput-wide v0, p0, Lcom/eltechs/axs/FingerSweepAdapter;->time:J

    float-to-int v0, v2

    .line 73
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->sensitivity:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    return v0

    .line 61
    :cond_1
    :goto_0
    iget v0, p0, Lcom/eltechs/axs/FingerSweepAdapter;->sensitivity:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1
.end method

.method private pointerMoveDelta(FF)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget-boolean v1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->ignoreX:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/FingerSweepAdapter;->getAcceleratedValue(F)F

    move-result p1

    :goto_0
    iget-boolean v1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->ignoreY:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    invoke-direct {p0, p2}, Lcom/eltechs/axs/FingerSweepAdapter;->getAcceleratedValue(F)F

    move-result v2

    .line 106
    :goto_1
    invoke-virtual {v0, p1, v2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMoveDelta(FF)V

    return-void
.end method


# virtual methods
.method public pointerEntered(FF)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerX:F

    .line 80
    iput p2, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerY:F

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->time:J

    return-void
.end method

.method public pointerExited(FF)V
    .locals 1

    .line 87
    iget v0, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerY:F

    sub-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/FingerSweepAdapter;->pointerMoveDelta(FF)V

    return-void
.end method

.method public pointerMove(FF)V
    .locals 2

    .line 93
    iget v0, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerY:F

    sub-float v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/FingerSweepAdapter;->pointerMoveDelta(FF)V

    .line 94
    iput p1, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerX:F

    .line 95
    iput p2, p0, Lcom/eltechs/axs/FingerSweepAdapter;->pointerY:F

    return-void
.end method
