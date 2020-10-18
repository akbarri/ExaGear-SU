.class public Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;
.super Landroid/opengl/GLSurfaceView;
.source "ViewOfXServer.java"


# instance fields
.field private final configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

.field private final contentModificationListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

.field private final pointerListener:Lcom/eltechs/axs/xserver/PointerListener;

.field private final renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

.field private transformationViewToXServer:Landroid/graphics/Matrix;

.field private final windowChangeListener:Lcom/eltechs/axs/xserver/WindowChangeListener;

.field private final windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

.field private final xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private zoomController:Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/configuration/XServerViewConfiguration;)V
    .locals 7

    .line 233
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 54
    new-instance p1, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$2;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$2;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->contentModificationListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    .line 65
    new-instance p1, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$3;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$3;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->pointerListener:Lcom/eltechs/axs/xserver/PointerListener;

    .line 86
    new-instance p1, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$4;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$4;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->windowChangeListener:Lcom/eltechs/axs/xserver/WindowChangeListener;

    const/4 p1, 0x2

    .line 236
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 242
    invoke-virtual/range {v0 .. v6}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setEGLConfigChooser(IIIIII)V

    .line 243
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 245
    iput-object p4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    if-nez p3, :cond_0

    .line 248
    new-instance p1, Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    goto :goto_0

    .line 251
    :cond_0
    iput-object p3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 254
    :goto_0
    new-instance p1, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    iget-object p3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-direct {p1, p0, p3}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/ViewFacade;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    .line 255
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setRenderMode(I)V

    .line 258
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->transformationViewToXServer:Landroid/graphics/Matrix;

    .line 259
    new-instance p1, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/ScreenInfo;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->zoomController:Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    .line 261
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setFocusable(Z)V

    .line 262
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowMapped(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowUnmapped(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowZOrderChanged(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowContentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method static synthetic access$500(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueCursorPositionChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowGeometryChanged(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method static synthetic access$700(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowAttributesChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    return-object p0
.end method

.method private isDegenerate()Z
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private queueCursorPositionChanged()V
    .locals 1

    .line 215
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$12;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$12;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    .line 219
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->requestRender()V

    return-void
.end method

.method private queueWindowAttributesChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$6;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private queueWindowBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 200
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$11;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$11;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private queueWindowContentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 8

    .line 186
    new-instance v7, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;IIII)V

    invoke-virtual {p0, v7}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->requestRender()V

    return-void
.end method

.method private queueWindowGeometryChanged(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$5;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$5;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->requestRender()V

    return-void
.end method

.method private queueWindowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 142
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private queueWindowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$8;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$8;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->requestRender()V

    return-void
.end method

.method private queueWindowZOrderChanged(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 169
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$9;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$9;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reinitRenderTransformation()V
    .locals 10

    .line 358
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getHeight()I

    move-result v1

    int-to-float v3, v1

    iget v1, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-float v6, v1

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    .line 363
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleHorizontal()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    move-result-object v8

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    .line 364
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleVertical()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 360
    invoke-static/range {v2 .. v9}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->makeTransformationMatrix(FFFFFFLcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->transformationViewToXServer:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 366
    new-instance v0, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/ScreenInfo;)V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->zoomController:Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    return-void
.end method


# virtual methods
.method public freezeRenderer()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->freeze()V

    :cond_0
    return-void
.end method

.method public getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    return-object v0
.end method

.method public getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->transformationViewToXServer:Landroid/graphics/Matrix;

    const-string v1, "transformation matrix is not set"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->transformationViewToXServer:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    return-object v0
.end method

.method public getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 287
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 288
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->zoomController:Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Zoom controller is not initialized"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->zoomController:Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    return-object v0
.end method

.method public final isHorizontalStretchEnabled()Z
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleHorizontal()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 333
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 335
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 336
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->contentModificationListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    .line 337
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->windowChangeListener:Lcom/eltechs/axs/xserver/WindowChangeListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->addWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V

    .line 338
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->pointerListener:Lcom/eltechs/axs/xserver/PointerListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->addPointerListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 307
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v2, 0x0

    .line 308
    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 309
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v1, 0x6

    .line 310
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 345
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->contentModificationListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    .line 346
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->windowChangeListener:Lcom/eltechs/axs/xserver/WindowChangeListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->removeWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V

    .line 347
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->pointerListener:Lcom/eltechs/axs/xserver/PointerListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->removePointerListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    .line 349
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->onPause()V

    .line 327
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 319
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 372
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->reinitRenderTransformation()V

    return-void
.end method

.method public setHorizontalStretchEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    sget-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->setFitStyleHorizontal(Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->configuration:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    sget-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->setFitStyleHorizontal(Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;)V

    .line 427
    :goto_0
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->isDegenerate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->reinitRenderTransformation()V

    .line 430
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->zoomController:Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->revertZoom()V

    :cond_1
    return-void
.end method

.method public setViewToXServerTransformationMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->transformationViewToXServer:Landroid/graphics/Matrix;

    const-string v1, "transformation matrix is not set"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->transformationViewToXServer:Landroid/graphics/Matrix;

    return-void
.end method

.method public setXViewport(Lcom/eltechs/axs/geom/RectangleF;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->setXViewport(Lcom/eltechs/axs/geom/RectangleF;)V

    .line 388
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->requestRender()V

    return-void
.end method

.method public unfreezeRenderer()V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->renderer:Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->unFreeze()V

    :cond_0
    return-void
.end method
