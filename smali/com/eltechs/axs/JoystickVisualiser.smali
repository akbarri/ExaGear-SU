.class public Lcom/eltechs/axs/JoystickVisualiser;
.super Ljava/lang/Object;
.source "JoystickVisualiser.java"

# interfaces
.implements Lcom/eltechs/axs/TouchScreenControlVisualizer;
.implements Lcom/eltechs/axs/PointerEventListener;


# instance fields
.field private final alpha:F

.field private final alwaysVisible:Z

.field private final bitmap:Landroid/graphics/Bitmap;

.field private centerX:F

.field private centerY:F

.field private defaultX:F

.field private defaultY:F

.field private transient graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

.field private final radius:F

.field private final rectangleId:I

.field private final textureId:I

.field private visible:Z


# direct methods
.method public constructor <init>(FLandroid/graphics/Bitmap;FZFFLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->visible:Z

    const-string v0, "No button image specified"

    .line 48
    invoke-static {p2, v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    .line 50
    iput-object p2, p0, Lcom/eltechs/axs/JoystickVisualiser;->bitmap:Landroid/graphics/Bitmap;

    .line 51
    iput p3, p0, Lcom/eltechs/axs/JoystickVisualiser;->alpha:F

    .line 52
    iput-boolean p4, p0, Lcom/eltechs/axs/JoystickVisualiser;->alwaysVisible:Z

    .line 53
    iput p5, p0, Lcom/eltechs/axs/JoystickVisualiser;->defaultX:F

    .line 54
    iput p6, p0, Lcom/eltechs/axs/JoystickVisualiser;->defaultY:F

    .line 56
    invoke-virtual {p7}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addRectangle()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->rectangleId:I

    .line 57
    invoke-virtual {p7}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addTexture()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->textureId:I

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1, p1}, Lcom/eltechs/axs/JoystickVisualiser;->pointerExited(FF)V

    return-void
.end method

.method private moveHolder()V
    .locals 11

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/eltechs/axs/JoystickVisualiser;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    iget v2, p0, Lcom/eltechs/axs/JoystickVisualiser;->rectangleId:I

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerX:F

    iget v3, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerY:F

    iget v4, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    sub-float/2addr v0, v4

    neg-float v4, v0

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    iget v6, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    mul-float/2addr v6, v5

    const/high16 v7, -0x40800000    # -1.0f

    iget v8, p0, Lcom/eltechs/axs/JoystickVisualiser;->textureId:I

    iget v9, p0, Lcom/eltechs/axs/JoystickVisualiser;->alpha:F

    const/4 v10, 0x0

    move v5, v0

    invoke-virtual/range {v1 .. v10}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->placeRectangle(IFFFFFIFZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 12

    .line 65
    iput-object p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    .line 67
    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->textureId:I

    iget-object v1, p0, Lcom/eltechs/axs/JoystickVisualiser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureFromBitmap(ILandroid/graphics/Bitmap;)V

    .line 68
    iget v3, p0, Lcom/eltechs/axs/JoystickVisualiser;->rectangleId:I

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerX:F

    iget v1, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerY:F

    iget v1, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    sub-float/2addr v0, v1

    neg-float v5, v0

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v6, v1, v0

    iget v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->radius:F

    mul-float v7, v1, v0

    iget v9, p0, Lcom/eltechs/axs/JoystickVisualiser;->textureId:I

    iget v10, p0, Lcom/eltechs/axs/JoystickVisualiser;->alpha:F

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->placeRectangle(IFFFFFIFZ)V

    return-void
.end method

.method public detachedFromGLContext()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/eltechs/axs/JoystickVisualiser;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    return-void
.end method

.method public pointerEntered(FF)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerX:F

    .line 81
    iput p2, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerY:F

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->visible:Z

    .line 84
    invoke-direct {p0}, Lcom/eltechs/axs/JoystickVisualiser;->moveHolder()V

    return-void
.end method

.method public pointerExited(FF)V
    .locals 0

    .line 90
    iget-boolean p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->alwaysVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->visible:Z

    .line 94
    :cond_0
    iget p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->defaultX:F

    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerX:F

    .line 95
    iget p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->defaultY:F

    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerY:F

    .line 97
    invoke-direct {p0}, Lcom/eltechs/axs/JoystickVisualiser;->moveHolder()V

    return-void
.end method

.method public pointerMove(FF)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerX:F

    .line 104
    iput p2, p0, Lcom/eltechs/axs/JoystickVisualiser;->centerY:F

    .line 106
    invoke-direct {p0}, Lcom/eltechs/axs/JoystickVisualiser;->moveHolder()V

    return-void
.end method
