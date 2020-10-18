.class public Lcom/eltechs/axs/Finger;
.super Ljava/lang/Object;
.source "Finger.java"


# instance fields
.field private x:F

.field private xWhenFingerCountLastChanged:F

.field private final xWhenFirstTouched:F

.field private y:F

.field private yWhenFingerCountLastChanged:F

.field private final yWhenFirstTouched:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/eltechs/axs/Finger;->x:F

    iput p1, p0, Lcom/eltechs/axs/Finger;->xWhenFirstTouched:F

    .line 30
    iput p2, p0, Lcom/eltechs/axs/Finger;->y:F

    iput p2, p0, Lcom/eltechs/axs/Finger;->yWhenFirstTouched:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/eltechs/axs/Finger;->x:F

    return v0
.end method

.method public getXWhenFingerCountLastChanged()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/eltechs/axs/Finger;->xWhenFingerCountLastChanged:F

    return v0
.end method

.method public getXWhenFirstTouched()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/eltechs/axs/Finger;->xWhenFirstTouched:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/eltechs/axs/Finger;->y:F

    return v0
.end method

.method public getYWhenFingerCountLastChanged()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/eltechs/axs/Finger;->yWhenFingerCountLastChanged:F

    return v0
.end method

.method public getYWhenFirstTouched()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/eltechs/axs/Finger;->yWhenFirstTouched:F

    return v0
.end method

.method public notifyFingersCountChanged()V
    .locals 1

    .line 62
    iget v0, p0, Lcom/eltechs/axs/Finger;->x:F

    iput v0, p0, Lcom/eltechs/axs/Finger;->xWhenFingerCountLastChanged:F

    .line 63
    iget v0, p0, Lcom/eltechs/axs/Finger;->y:F

    iput v0, p0, Lcom/eltechs/axs/Finger;->yWhenFingerCountLastChanged:F

    return-void
.end method

.method public release(FF)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/eltechs/axs/Finger;->x:F

    .line 54
    iput p2, p0, Lcom/eltechs/axs/Finger;->y:F

    return-void
.end method

.method public update(FF)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/eltechs/axs/Finger;->x:F

    .line 42
    iput p2, p0, Lcom/eltechs/axs/Finger;->y:F

    return-void
.end method
