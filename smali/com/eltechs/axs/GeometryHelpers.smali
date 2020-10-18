.class public Lcom/eltechs/axs/GeometryHelpers;
.super Ljava/lang/Object;
.source "GeometryHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static center(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 72
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, v1, p1}, Lcom/eltechs/axs/GeometryHelpers;->center(FFFF)[F

    move-result-object p0

    .line 73
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public static center(FFFF)[F
    .locals 2

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [F

    add-float/2addr p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    const/4 v1, 0x0

    aput p0, v0, v1

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    const/4 p0, 0x1

    aput p1, v0, p0

    return-object v0
.end method

.method public static distance(FFFF)F
    .locals 0

    .line 20
    invoke-static {p0, p2}, Lcom/eltechs/axs/GeometryHelpers;->distanceAxis(FF)F

    move-result p0

    .line 21
    invoke-static {p1, p3}, Lcom/eltechs/axs/GeometryHelpers;->distanceAxis(FF)F

    move-result p1

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 34
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, v1, p1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p0

    return p0
.end method

.method public static distanceAxis(FF)F
    .locals 0

    sub-float/2addr p0, p1

    .line 46
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method
