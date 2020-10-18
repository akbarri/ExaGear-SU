.class public Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;
.super Ljava/lang/Object;
.source "XZoomController.java"


# instance fields
.field private final MAX_ZOOM_FACTOR:F

.field private final ZOOM_SENSETIVITY_THRESHOLD:F

.field private anchorHost:Landroid/graphics/PointF;

.field private anchorXServer:Landroid/graphics/PointF;

.field private isZoomed:Z

.field private final viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private visibleRectangle:Lcom/eltechs/axs/geom/RectangleF;

.field private final xServerScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

.field private zoomFactor:D


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/ScreenInfo;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 32
    iput v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->MAX_ZOOM_FACTOR:F

    const v0, 0x3f80a3d7    # 1.005f

    .line 34
    iput v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->ZOOM_SENSETIVITY_THRESHOLD:F

    .line 57
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 58
    iput-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->xServerScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 59
    new-instance p1, Lcom/eltechs/axs/geom/RectangleF;

    iget v0, p2, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-float v0, v0

    iget p2, p2, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p2}, Lcom/eltechs/axs/geom/RectangleF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->visibleRectangle:Lcom/eltechs/axs/geom/RectangleF;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 60
    iput-wide p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    return-void
.end method

.method private applyZoomRect(Lcom/eltechs/axs/geom/RectangleF;)V
    .locals 9

    .line 182
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 183
    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getHeight()I

    move-result v0

    int-to-float v2, v0

    iget v3, p1, Lcom/eltechs/axs/geom/RectangleF;->x:F

    iget v4, p1, Lcom/eltechs/axs/geom/RectangleF;->y:F

    iget v5, p1, Lcom/eltechs/axs/geom/RectangleF;->width:F

    iget v6, p1, Lcom/eltechs/axs/geom/RectangleF;->height:F

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 188
    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleHorizontal()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    move-result-object v7

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 189
    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleVertical()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    move-result-object v8

    .line 182
    invoke-static/range {v1 .. v8}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->makeTransformationMatrix(FFFFFFLcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    const-string v2, "xScreenRect is degenerate"

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setViewToXServerTransformationMatrix(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setXViewport(Lcom/eltechs/axs/geom/RectangleF;)V

    .line 193
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->visibleRectangle:Lcom/eltechs/axs/geom/RectangleF;

    return-void
.end method

.method private setZoom()V
    .locals 8

    .line 104
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed:Z

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->xServerScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 106
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->xServerScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-double v2, v0

    .line 109
    iget-wide v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    div-double/2addr v2, v4

    double-to-float v2, v2

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->unsignedSaturate(FF)F

    move-result v0

    int-to-double v2, v1

    .line 110
    iget-wide v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    div-double/2addr v2, v4

    double-to-float v2, v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/eltechs/axs/helpers/ArithHelpers;->unsignedSaturate(FF)F

    move-result v1

    const/4 v2, 0x2

    .line 118
    new-array v2, v2, [F

    iget-object v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->anchorHost:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->anchorHost:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 120
    iget-object v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 122
    new-instance v3, Lcom/eltechs/axs/geom/RectangleF;

    iget-object v6, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->anchorXServer:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget v4, v2, v4

    iget-object v7, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->visibleRectangle:Lcom/eltechs/axs/geom/RectangleF;

    iget v7, v7, Lcom/eltechs/axs/geom/RectangleF;->x:F

    sub-float/2addr v4, v7

    sub-float/2addr v6, v4

    iget-object v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->anchorXServer:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget v2, v2, v5

    iget-object v5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->visibleRectangle:Lcom/eltechs/axs/geom/RectangleF;

    iget v5, v5, Lcom/eltechs/axs/geom/RectangleF;->y:F

    sub-float/2addr v2, v5

    sub-float/2addr v4, v2

    invoke-direct {v3, v6, v4, v0, v1}, Lcom/eltechs/axs/geom/RectangleF;-><init>(FFFF)V

    .line 127
    invoke-direct {p0, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->applyZoomRect(Lcom/eltechs/axs/geom/RectangleF;)V

    return-void
.end method


# virtual methods
.method public insertZoomFactorChange(D)V
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    return-void
.end method

.method public isZoomed()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed:Z

    return v0
.end method

.method public refreshZoom()V
    .locals 4

    .line 142
    iget-wide v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    const-wide v2, 0x3ff0147ae0000000L    # 1.0049999952316284

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 144
    iget-wide v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 146
    iput-wide v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed:Z

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->revertZoom()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed:Z

    goto :goto_0

    .line 156
    :cond_1
    iget-wide v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 158
    iput-wide v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->zoomFactor:D

    :cond_2
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed:Z

    .line 161
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setZoom()V

    :cond_3
    :goto_0
    return-void
.end method

.method public revertZoom()V
    .locals 4

    .line 201
    new-instance v0, Lcom/eltechs/axs/geom/RectangleF;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->xServerScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->xServerScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iget v2, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/eltechs/axs/geom/RectangleF;-><init>(FFFF)V

    .line 202
    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->applyZoomRect(Lcom/eltechs/axs/geom/RectangleF;)V

    return-void
.end method

.method public setAnchorBoth(FF)V
    .locals 2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->setAnchorHost(FF)V

    const/4 v0, 0x2

    .line 75
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 77
    iget-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 78
    new-instance p2, Landroid/graphics/PointF;

    aget v1, v0, v1

    aget p1, v0, p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->anchorXServer:Landroid/graphics/PointF;

    return-void
.end method

.method public setAnchorHost(FF)V
    .locals 1

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->anchorHost:Landroid/graphics/PointF;

    return-void
.end method
