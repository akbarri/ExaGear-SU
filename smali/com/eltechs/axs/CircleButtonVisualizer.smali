.class public Lcom/eltechs/axs/CircleButtonVisualizer;
.super Ljava/lang/Object;
.source "CircleButtonVisualizer.java"

# interfaces
.implements Lcom/eltechs/axs/ButtonEventListener;
.implements Lcom/eltechs/axs/TouchScreenControlVisualizer;


# instance fields
.field private final alpha:F

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final centerX:F

.field private final centerY:F

.field private isActive:Z

.field private final radius:F

.field private final rectangleId:I

.field private final textureId:I


# direct methods
.method public constructor <init>(FFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->isActive:Z

    const-string v0, "No button image specified"

    .line 41
    invoke-static {p4, v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput p1, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->centerX:F

    .line 43
    iput p2, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->centerY:F

    .line 44
    iput p3, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->radius:F

    .line 45
    iput-object p4, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    iput p5, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->alpha:F

    .line 48
    invoke-virtual {p6}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addRectangle()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->rectangleId:I

    .line 49
    invoke-virtual {p6}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addTexture()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->textureId:I

    return-void
.end method


# virtual methods
.method public attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 12

    .line 69
    iget v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->textureId:I

    iget-object v1, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureFromBitmap(ILandroid/graphics/Bitmap;)V

    .line 70
    iget v3, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->rectangleId:I

    iget v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->centerX:F

    iget v1, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->radius:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->centerY:F

    iget v1, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->radius:F

    sub-float/2addr v0, v1

    neg-float v5, v0

    iget v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v6, v1, v0

    iget v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->radius:F

    mul-float v7, v1, v0

    iget v9, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->textureId:I

    iget v10, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->alpha:F

    const/high16 v8, -0x40000000    # -2.0f

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

    .line 56
    iput-boolean v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->isActive:Z

    return-void
.end method

.method public released()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/eltechs/axs/CircleButtonVisualizer;->isActive:Z

    return-void
.end method
