.class public Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;
.super Ljava/lang/Object;
.source "AlignedMouseClickAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;


# instance fields
.field private actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private final clickAlignThreshold:F

.field private final clickerIfFar:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private final clickerIfNear:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private final mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private final pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 36
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->clickerIfNear:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    .line 37
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->clickerIfFar:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    .line 38
    iput-object p4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 39
    iput-object p5, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 40
    iput p6, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->clickAlignThreshold:F

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    return-void
.end method


# virtual methods
.method public click(FF)V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "click() and finalizeClick() were called in wrong order!"

    invoke-static {v0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    const/4 v3, 0x2

    .line 49
    new-array v4, v3, [F

    iget v5, v0, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-float v5, v5

    aput v5, v4, v1

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-float v0, v0

    aput v0, v4, v2

    .line 50
    new-array v0, v3, [F

    .line 51
    iget-object v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 53
    iget-object v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-interface {v3, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->prepareMoving(FF)V

    .line 55
    aget v1, v0, v1

    aget v0, v0, v2

    invoke-static {p1, p2, v1, v0}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result v0

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->clickAlignThreshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    .line 58
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->clickerIfFar:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    goto :goto_1

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->clickerIfNear:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    .line 63
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->click()V

    return-void
.end method

.method public finalizeClick(FF)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "click() and finalizeClick() were called in wrong order!"

    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->finalizeClick()V

    .line 71
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    sget-object p2, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->TAP:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->setLastMoveMethod(Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;)V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    return-void
.end method
