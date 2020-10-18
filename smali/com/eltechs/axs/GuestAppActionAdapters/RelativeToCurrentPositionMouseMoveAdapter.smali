.class public Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;
.super Ljava/lang/Object;
.source "RelativeToCurrentPositionMouseMoveAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# instance fields
.field private final facade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

.field private final subsubadapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->subsubadapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 30
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 31
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    return-void
.end method


# virtual methods
.method public moveTo(FF)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->moveTo(FF)V

    return-void
.end method

.method public prepareMoving(FF)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    const/4 v1, 0x2

    .line 39
    new-array v1, v1, [F

    iget v2, v0, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 41
    aget v0, v1, v3

    sub-float/2addr v0, p1

    .line 42
    aget p1, v1, v2

    sub-float/2addr p1, p2

    .line 43
    new-instance p2, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->subsubadapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-direct {p2, v1, v0, p1}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/RelativeToCurrentPositionMouseMoveAdapter;->subadapter:Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    return-void
.end method
