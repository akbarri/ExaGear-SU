.class public Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;
.super Ljava/lang/Object;
.source "MouseMoveAdapterWithLimit.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# instance fields
.field private final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private final per:Lcom/eltechs/axs/PointerEventReporter;

.field final xLimitUp:F

.field final yLimitUp:F


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;FF)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 27
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->xLimitUp:F

    .line 28
    iput p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->yLimitUp:F

    .line 30
    new-instance p2, Lcom/eltechs/axs/PointerEventReporter;

    invoke-direct {p2, p1}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->per:Lcom/eltechs/axs/PointerEventReporter;

    return-void
.end method


# virtual methods
.method public moveTo(FF)V
    .locals 4

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [F

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->xLimitUp:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->yLimitUp:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 38
    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 40
    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapterWithLimit;->per:Lcom/eltechs/axs/PointerEventReporter;

    aget v2, v0, v2

    invoke-static {p1, p1, v2}, Lcom/eltechs/axs/helpers/ArithHelpers;->saturateInRange(FFF)F

    move-result p1

    aget v0, v0, v3

    invoke-static {p2, p2, v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->saturateInRange(FFF)F

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    return-void
.end method

.method public prepareMoving(FF)V
    .locals 0

    return-void
.end method
