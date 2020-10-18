.class public Lcom/eltechs/axs/ButtonVisualizer;
.super Ljava/lang/Object;
.source "ButtonVisualizer.java"

# interfaces
.implements Lcom/eltechs/axs/ButtonEventListener;
.implements Lcom/eltechs/axs/TouchScreenControlVisualizer;


# instance fields
.field private final alpha:F

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bottomX:F

.field private final bottomY:F

.field private isActive:Z

.field private final rectangleId:I

.field private final textureId:I

.field private final topX:F

.field private final topY:F


# direct methods
.method public constructor <init>(FFFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->isActive:Z

    const-string v0, "No button image specified"

    .line 43
    invoke-static {p5, v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput p1, p0, Lcom/eltechs/axs/ButtonVisualizer;->topX:F

    .line 45
    iput p2, p0, Lcom/eltechs/axs/ButtonVisualizer;->topY:F

    .line 46
    iput p3, p0, Lcom/eltechs/axs/ButtonVisualizer;->bottomX:F

    .line 47
    iput p4, p0, Lcom/eltechs/axs/ButtonVisualizer;->bottomY:F

    .line 48
    iput-object p5, p0, Lcom/eltechs/axs/ButtonVisualizer;->bitmap:Landroid/graphics/Bitmap;

    .line 49
    iput p6, p0, Lcom/eltechs/axs/ButtonVisualizer;->alpha:F

    .line 51
    invoke-virtual {p7}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addRectangle()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/ButtonVisualizer;->rectangleId:I

    .line 52
    invoke-virtual {p7}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addTexture()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/ButtonVisualizer;->textureId:I

    return-void
.end method


# virtual methods
.method public attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 12

    .line 72
    iget v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->textureId:I

    iget-object v1, p0, Lcom/eltechs/axs/ButtonVisualizer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureFromBitmap(ILandroid/graphics/Bitmap;)V

    .line 73
    iget v3, p0, Lcom/eltechs/axs/ButtonVisualizer;->rectangleId:I

    iget v4, p0, Lcom/eltechs/axs/ButtonVisualizer;->topX:F

    iget v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->topY:F

    neg-float v5, v0

    iget v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->bottomX:F

    iget v1, p0, Lcom/eltechs/axs/ButtonVisualizer;->topX:F

    sub-float v6, v0, v1

    iget v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->bottomY:F

    iget v1, p0, Lcom/eltechs/axs/ButtonVisualizer;->topY:F

    sub-float v7, v0, v1

    iget v9, p0, Lcom/eltechs/axs/ButtonVisualizer;->textureId:I

    iget v10, p0, Lcom/eltechs/axs/ButtonVisualizer;->alpha:F

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->placeRectangle(IFFFFFIFZ)V

    return-void
.end method

.method public detachedFromGLContext()V
    .locals 0

    return-void
.end method

.method public pressed()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->isActive:Z

    return-void
.end method

.method public released()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/eltechs/axs/ButtonVisualizer;->isActive:Z

    return-void
.end method
