.class public Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;
.super Ljava/lang/Object;
.source "AXSRendererGL.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private active:Z

.field private created:Z

.field private cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

.field private freeze:Z

.field private glViewportHeight:I

.field private glViewportWidth:I

.field final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private final invisibleCursorBitmap:Landroid/graphics/Bitmap;

.field private final rootCursorBitmap:Landroid/graphics/Bitmap;

.field private scHeight:I

.field private scWidth:I

.field private scX:I

.field private scY:I

.field private scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

.field private final viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private windowDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private xViewport:Lcom/eltechs/axs/geom/RectangleF;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->created:Z

    .line 81
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 82
    iput-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

    .line 85
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p1

    .line 86
    new-instance p2, Lcom/eltechs/axs/geom/RectangleF;

    iget v0, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-float v0, v0

    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p1}, Lcom/eltechs/axs/geom/RectangleF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    .line 88
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->createXCursorBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    .line 89
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->createInvisibleCursorBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->invisibleCursorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private createInvisibleCursorBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 116
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    return-object v0
.end method

.method private createXCursorBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 100
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, -0x1

    .line 103
    invoke-virtual {v0, v2, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    rsub-int/lit8 v4, v2, 0x9

    .line 104
    invoke-virtual {v0, v2, v4, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private moveDrawable(IILcom/eltechs/axs/geom/Rectangle;)V
    .locals 10

    .line 355
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v1, p3, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v2, p3, Lcom/eltechs/axs/geom/Rectangle;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureSize(III)V

    .line 356
    iget-object v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v0, p3, Lcom/eltechs/axs/geom/Rectangle;->x:I

    int-to-float v5, v0

    iget v0, p3, Lcom/eltechs/axs/geom/Rectangle;->y:I

    neg-int v0, v0

    int-to-float v6, v0

    iget v0, p3, Lcom/eltechs/axs/geom/Rectangle;->width:I

    int-to-float v7, v0

    iget p3, p3, Lcom/eltechs/axs/geom/Rectangle;->height:I

    int-to-float v8, p3

    int-to-float v9, p2

    move v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->moveRectangle(IFFFFF)V

    return-void
.end method

.method private placeCursor(I)V
    .locals 11

    .line 305
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getCursorDrawable()Lcom/eltechs/axs/xserver/PlacedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

    .line 306
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    .line 309
    iget v1, v0, Lcom/eltechs/axs/geom/Point;->x:I

    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 310
    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 312
    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget-object v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureSize(III)V

    .line 313
    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    int-to-float v3, v1

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, v2

    move v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    move v7, p1

    move v8, v9

    move v9, v10

    .line 313
    invoke-virtual/range {v0 .. v9}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->placeRectangle(IFFFFFIFZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 322
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->placeDrawable(IILcom/eltechs/axs/xserver/PlacedDrawable;Z)V

    :goto_0
    return-void
.end method

.method private placeDrawable(IILcom/eltechs/axs/xserver/PlacedDrawable;Z)V
    .locals 15

    move-object v0, p0

    .line 336
    invoke-virtual/range {p3 .. p3}, Lcom/eltechs/axs/xserver/PlacedDrawable;->getLocation()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v1

    .line 337
    iget-object v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v3, v1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v4, v1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move/from16 v12, p1

    invoke-virtual {v2, v12, v3, v4}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureSize(III)V

    .line 338
    iget-object v5, v0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    int-to-float v7, v2

    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    neg-int v2, v2

    int-to-float v8, v2

    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    int-to-float v9, v2

    iget v1, v1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    int-to-float v10, v1

    move/from16 v1, p2

    int-to-float v11, v1

    const/high16 v13, 0x3f800000    # 1.0f

    move v6, v12

    move/from16 v14, p4

    invoke-virtual/range {v5 .. v14}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->placeRectangle(IFFFFFIFZ)V

    return-void
.end method

.method private recreateScene()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfXServer()V

    .line 295
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfControls()V

    return-void
.end method

.method private recreateSceneOfControls()V
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->active:Z

    return-void
.end method

.method private recreateSceneOfXServer()V
    .locals 7

    .line 369
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->created:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->listNonRootWindowDrawables()Ljava/util/ArrayList;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    .line 377
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    .line 379
    new-instance v4, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    invoke-direct {v4, v2, v2}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->setScene(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V

    .line 380
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->updateSceneViewports()V

    :goto_0
    if-ge v3, v1, :cond_0

    .line 384
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/axs/xserver/PlacedDrawable;

    .line 385
    iget-object v5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/PlacedDrawable;->getDrawable()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v6

    check-cast v6, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v5, v2, v3

    const/4 v6, 0x1

    .line 386
    invoke-direct {p0, v3, v5, v4, v6}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->placeDrawable(IILcom/eltechs/axs/xserver/PlacedDrawable;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->placeCursor(I)V

    :cond_1
    return-void
.end method

.method private reloadCursorTexture(I)V
    .locals 2

    .line 277
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->isCursorShowNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->invisibleCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->updateTextureFromBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->rootCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->updateTextureFromBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorDrawable:Lcom/eltechs/axs/xserver/PlacedDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/PlacedDrawable;->getDrawable()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->updateTextureFromDrawable(ILcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V

    :goto_0
    return-void
.end method

.method private reloadWindowTextures(I)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 266
    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, p1, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->updateTextureFromDrawable(ILcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V

    move p1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setScene(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    invoke-virtual {v0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->destroy()V

    .line 409
    :cond_0
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    return-void
.end method

.method private updateSceneViewports()V
    .locals 10

    .line 222
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object v0

    .line 226
    iget v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportWidth:I

    int-to-float v2, v1

    iget v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportHeight:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v4, v1, Lcom/eltechs/axs/geom/RectangleF;->x:F

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v5, v1, Lcom/eltechs/axs/geom/RectangleF;->y:F

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v6, v1, Lcom/eltechs/axs/geom/RectangleF;->width:F

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v7, v1, Lcom/eltechs/axs/geom/RectangleF;->height:F

    .line 233
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleHorizontal()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    move-result-object v8

    .line 234
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->getFitStyleVertical()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    move-result-object v9

    .line 227
    invoke-static/range {v2 .. v9}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->makeTransformationDescription(FFFFFFLcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v2, v2, Lcom/eltechs/axs/geom/RectangleF;->x:F

    iget-object v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v3, v3, Lcom/eltechs/axs/geom/RectangleF;->y:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v4, v4, Lcom/eltechs/axs/geom/RectangleF;->width:F

    iget-object v5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v5, v5, Lcom/eltechs/axs/geom/RectangleF;->height:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setSceneViewport(FFFF)V

    .line 237
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->viewTranslateX:F

    iget v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->viewTranslateY:F

    iget v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v4, v4, Lcom/eltechs/axs/geom/RectangleF;->width:F

    iget v5, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v5, v5, Lcom/eltechs/axs/geom/RectangleF;->height:F

    iget v6, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setViewport(FFFF)V

    .line 250
    iget v1, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->xServerTranslateX:F

    iget v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleX:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->viewTranslateX:F

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scX:I

    .line 251
    iget v1, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->xServerTranslateY:F

    iget v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleY:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->viewTranslateY:F

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scY:I

    .line 252
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-float v1, v1

    iget v2, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleX:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scWidth:I

    .line 253
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-float v1, v1

    iget v0, v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleY:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0

    monitor-enter p0

    .line 458
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cursorChanged()V
    .locals 1

    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->placeCursor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 467
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized freeze()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 194
    :try_start_0
    iput-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->freeze:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 193
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized frontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    monitor-enter p0

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfXServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit p0

    throw p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/16 p1, 0x4100

    .line 167
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 169
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object p1

    sget-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0xc11

    .line 175
    :try_start_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 176
    iget v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scX:I

    iget v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportHeight:I

    iget v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scY:I

    iget v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scHeight:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scWidth:I

    iget v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scHeight:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v1, 0x0

    .line 178
    iget-boolean v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->freeze:Z

    if-nez v2, :cond_0

    .line 180
    invoke-direct {p0, v1}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->reloadWindowTextures(I)V

    .line 181
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->reloadCursorTexture(I)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->scene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    invoke-virtual {v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->draw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 187
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 186
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 187
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    throw v1

    :catchall_1
    move-exception p1

    .line 189
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iput-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 160
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 144
    :try_start_0
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 146
    iput p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportWidth:I

    .line 147
    iput p3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->glViewportHeight:I

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->active:Z

    .line 151
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->updateSceneViewports()V

    .line 152
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfControls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 124
    :try_start_0
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xb44

    .line 125
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0xb71

    .line 126
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0xbe2

    .line 128
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 129
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->created:Z

    .line 138
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateScene()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setXViewport(Lcom/eltechs/axs/geom/RectangleF;)V
    .locals 0

    monitor-enter p0

    .line 210
    :try_start_0
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->xViewport:Lcom/eltechs/axs/geom/RectangleF;

    .line 212
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->updateSceneViewports()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 209
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unFreeze()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iput-boolean v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->freeze:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 198
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized windowAttributesChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->cursorChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 518
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowGeometryChanged(Lcom/eltechs/axs/xserver/Window;)V
    .locals 4

    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 500
    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowDrawables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 502
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->moveDrawable(IILcom/eltechs/axs/geom/Rectangle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 493
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    monitor-enter p0

    .line 420
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfXServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 419
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    monitor-enter p0

    .line 431
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfXServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 430
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowZOrderChanged(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    monitor-enter p0

    .line 442
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->recreateSceneOfXServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 441
    monitor-exit p0

    throw p1
.end method
