.class public Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;
.super Ljava/lang/Object;
.source "GraphicsSceneConfigurer.java"


# instance fields
.field private nRectangles:I

.field private nTextures:I

.field private sceneViewport:Lcom/eltechs/axs/geom/RectangleF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/eltechs/axs/geom/RectangleF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/eltechs/axs/geom/RectangleF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    return-void
.end method


# virtual methods
.method public addRectangle()I
    .locals 2

    .line 49
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->nRectangles:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->nRectangles:I

    return v0
.end method

.method public addTexture()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->nTextures:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->nTextures:I

    return v0
.end method

.method public createScene()Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;
    .locals 5

    .line 64
    new-instance v0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v1, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->nRectangles:I

    iget v2, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->nTextures:I

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;-><init>(II)V

    .line 66
    iget-object v1, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v1, v1, Lcom/eltechs/axs/geom/RectangleF;->x:F

    iget-object v2, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v2, v2, Lcom/eltechs/axs/geom/RectangleF;->y:F

    iget-object v3, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v3, v3, Lcom/eltechs/axs/geom/RectangleF;->width:F

    iget-object v4, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    iget v4, v4, Lcom/eltechs/axs/geom/RectangleF;->height:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setSceneViewport(FFFF)V

    return-object v0
.end method

.method public setSceneViewport(FFFF)V
    .locals 1

    .line 39
    new-instance v0, Lcom/eltechs/axs/geom/RectangleF;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/eltechs/axs/geom/RectangleF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    return-void
.end method

.method public setSceneViewport(Lcom/eltechs/axs/geom/RectangleF;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->sceneViewport:Lcom/eltechs/axs/geom/RectangleF;

    return-void
.end method
