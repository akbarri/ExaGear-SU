.class public Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;
.super Ljava/lang/Object;
.source "FingerSweepAndStrokeAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/PointerEventListener;


# instance fields
.field private final buttonNum:I

.field private enterInfoReported:Z

.field private isStrokePossible:Z

.field private pointerEnterX:F

.field private pointerEnterY:F

.field private final pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

.field private pointerX:F

.field private pointerY:F

.field private final pressButton:Z

.field private final strokeDistinctness:D

.field private final strokeEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/StrokeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final strokeSpeed:D

.field private time:J


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;ZIDD)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    .line 54
    iput-boolean p2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pressButton:Z

    .line 55
    iput p3, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->buttonNum:I

    .line 56
    iput-wide p4, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeSpeed:D

    .line 57
    iput-wide p6, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeDistinctness:D

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    return-void
.end method

.method private isStroke(FF)Z
    .locals 6

    .line 93
    iget-boolean v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->isStrokePossible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    iget v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterX:F

    sub-float/2addr v0, p1

    float-to-double v2, v0

    .line 99
    iget p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterY:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr v2, v2

    mul-double/2addr p1, p1

    add-double/2addr v2, p1

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 101
    iget-wide v2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeDistinctness:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_3

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    .line 104
    iget-wide v4, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->time:J

    long-to-double v4, v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 109
    :cond_1
    iget-wide v4, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->time:J

    long-to-double v4, v4

    sub-double/2addr v2, v4

    div-double/2addr p1, v2

    .line 110
    iget-wide v2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeSpeed:D

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 115
    :cond_2
    iput-boolean v1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->isStrokePossible:Z

    :cond_3
    return v1
.end method

.method private reportEnterInfoIfNeed()V
    .locals 3

    .line 175
    iget-boolean v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->enterInfoReported:Z

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterX:F

    iget v2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterY:F

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 178
    iget-boolean v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pressButton:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->buttonNum:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    :cond_0
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->enterInfoReported:Z

    :cond_1
    return-void
.end method

.method private reportStroke(DD)V
    .locals 6

    .line 130
    iget v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterX:F

    float-to-double v0, v0

    sub-double/2addr v0, p1

    .line 131
    iget p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterY:F

    float-to-double p1, p1

    sub-double/2addr p1, p3

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p3, p3, v2

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    mul-double v2, v0, v0

    mul-double v4, p1, p1

    add-double/2addr v2, v4

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-eqz p3, :cond_2

    cmpl-double p1, v0, v4

    if-lez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/StrokeEventListener;

    .line 141
    invoke-interface {p2, v2, v3}, Lcom/eltechs/axs/StrokeEventListener;->strokeLeft(D)V

    goto :goto_1

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/StrokeEventListener;

    .line 148
    invoke-interface {p2, v2, v3}, Lcom/eltechs/axs/StrokeEventListener;->strokeRight(D)V

    goto :goto_2

    :cond_2
    cmpl-double p1, p1, v4

    if-lez p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/StrokeEventListener;

    .line 157
    invoke-interface {p2, v2, v3}, Lcom/eltechs/axs/StrokeEventListener;->strokeTop(D)V

    goto :goto_3

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/StrokeEventListener;

    .line 163
    invoke-interface {p2, v2, v3}, Lcom/eltechs/axs/StrokeEventListener;->strokeBottom(D)V

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public addStrokeListener(Lcom/eltechs/axs/StrokeEventListener;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public pointerEntered(FF)V
    .locals 2

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->time:J

    .line 191
    iput p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterX:F

    iput p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerX:F

    .line 192
    iput p2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEnterY:F

    iput p2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerY:F

    .line 194
    iget-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->isStrokePossible:Z

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->enterInfoReported:Z

    return-void
.end method

.method public pointerExited(FF)V
    .locals 2

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->isStroke(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    float-to-double v0, p1

    float-to-double p1, p2

    .line 204
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->reportStroke(DD)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->reportEnterInfoIfNeed()V

    .line 209
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 210
    iget-boolean p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pressButton:Z

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget p2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->buttonNum:I

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pointerMove(FF)V
    .locals 1

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->isStroke(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->reportEnterInfoIfNeed()V

    .line 223
    iput p1, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerX:F

    .line 224
    iput p2, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerY:F

    .line 225
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    :cond_0
    return-void
.end method

.method public removeStrokeListener(Lcom/eltechs/axs/StrokeEventListener;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->strokeEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
