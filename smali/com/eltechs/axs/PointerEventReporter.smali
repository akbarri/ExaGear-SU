.class public Lcom/eltechs/axs/PointerEventReporter;
.super Ljava/lang/Object;
.source "PointerEventReporter.java"

# interfaces
.implements Lcom/eltechs/axs/PointerEventListener;


# instance fields
.field final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field final maxDivisor:I

.field final maximalDelta:F

.field private final xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/eltechs/axs/PointerEventReporter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 33
    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/16 p1, 0x14

    .line 35
    iput p1, p0, Lcom/eltechs/axs/PointerEventReporter;->maxDivisor:I

    .line 36
    iget-object p1, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p1

    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    iget-object v0, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 37
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 36
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/eltechs/axs/PointerEventReporter;->maxDivisor:I

    div-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/eltechs/axs/PointerEventReporter;->maximalDelta:F

    return-void
.end method

.method private sendCoordinates(FF)V
    .locals 2

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 50
    iget-object p2, p0, Lcom/eltechs/axs/PointerEventReporter;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 51
    iget-object p2, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    aget v1, v0, v1

    float-to-int v1, v1

    aget p1, v0, p1

    float-to-int p1, p1

    invoke-virtual {p2, v1, p1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerMove(II)V

    return-void
.end method


# virtual methods
.method public buttonPressed(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerButtonPress(I)V

    return-void
.end method

.method public buttonReleased(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerButtonRelease(I)V

    return-void
.end method

.method public click(II)V
    .locals 2

    int-to-long v0, p2

    const/4 p2, 0x0

    .line 92
    :try_start_0
    invoke-static {v0, v1, p2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    .line 94
    :try_start_1
    invoke-static {v0, v1, p2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :catch_1
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    return-void
.end method

.method public clickAtPoint(FFII)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 82
    invoke-virtual {p0, p3, p4}, Lcom/eltechs/axs/PointerEventReporter;->click(II)V

    return-void
.end method

.method public pointerEntered(FF)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->sendCoordinates(FF)V

    return-void
.end method

.method public pointerExited(FF)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->sendCoordinates(FF)V

    return-void
.end method

.method public pointerMove(FF)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->sendCoordinates(FF)V

    return-void
.end method

.method public pointerMoveDelta(FF)V
    .locals 7

    .line 124
    iget v0, p0, Lcom/eltechs/axs/PointerEventReporter;->maximalDelta:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/eltechs/axs/PointerEventReporter;->maximalDelta:F

    div-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/eltechs/axs/PointerEventReporter;->maxDivisor:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    div-float v2, p1, v1

    div-float v3, p2, v1

    .line 130
    iget-object v4, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6, v0}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerDelta(III)V

    .line 133
    iget-object v0, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    float-to-int p1, p1

    mul-float/2addr v3, v1

    sub-float/2addr p2, v3

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerDelta(II)V

    return-void
.end method

.method public wheelScrolledDown()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerWheelDown(I)V

    return-void
.end method

.method public wheelScrolledUp()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/eltechs/axs/PointerEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerWheelUp(I)V

    return-void
.end method
