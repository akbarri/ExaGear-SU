.class public Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;
.super Ljava/lang/Object;
.source "RelativeToCurrentPositionMouseMoveAdapterAccelerate.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# instance fields
.field private final facade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final fingerCount:I

.field private final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private lastPointerX:F

.field private lastPointerY:F

.field private lastX:F

.field private lastY:F

.field private subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

.field private final subsubadapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->subsubadapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 26
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 27
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 28
    iput p4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->fingerCount:I

    return-void
.end method


# virtual methods
.method public moveTo(FF)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 33
    iget v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->fingerCount:I

    int-to-float v0, v0

    .line 34
    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastX:F

    iget v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastY:F

    invoke-static {v1, v2, p1, p2}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result v1

    mul-float v1, v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    :goto_1
    mul-float v0, v0, v1

    goto :goto_2

    :cond_1
    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_1

    .line 43
    :cond_3
    :goto_2
    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerX:F

    iget v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastX:F

    sub-float v2, p1, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerX:F

    .line 44
    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerY:F

    iget v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastY:F

    sub-float v2, p2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerY:F

    .line 45
    iput p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastX:F

    .line 46
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastY:F

    .line 47
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    iget p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerX:F

    iget v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerY:F

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->moveTo(FF)V

    return-void
.end method

.method public prepareMoving(FF)V
    .locals 5

    .line 51
    iput p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastX:F

    .line 52
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastY:F

    .line 53
    iput p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerX:F

    .line 54
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->lastPointerY:F

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    const/4 v1, 0x2

    .line 56
    new-array v1, v1, [F

    iget v2, v0, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 58
    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    iget-object v4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->subsubadapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    aget v3, v1, v3

    sub-float/2addr v3, p1

    aget p1, v1, v2

    sub-float/2addr p1, p2

    invoke-direct {v0, v4, v3, p1}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    iput-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapterAccelerate;->subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    return-void
.end method
