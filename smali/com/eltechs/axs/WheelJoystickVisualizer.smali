.class public Lcom/eltechs/axs/WheelJoystickVisualizer;
.super Ljava/lang/Object;
.source "WheelJoystickVisualizer.java"

# interfaces
.implements Lcom/eltechs/axs/TouchScreenControlVisualizer;
.implements Lcom/eltechs/axs/WheelEventListener;


# instance fields
.field private final alpha:F

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final coordX:F

.field private final coordY:F

.field private final radius:F

.field private final rectangleId:I

.field private final textureId:I


# direct methods
.method public constructor <init>(FFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No button image specified"

    .line 42
    invoke-static {p4, v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput p1, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->coordX:F

    .line 44
    iput p2, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->coordY:F

    .line 45
    iput p3, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->radius:F

    .line 46
    iput-object p4, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->bitmap:Landroid/graphics/Bitmap;

    .line 47
    iput p5, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->alpha:F

    .line 49
    invoke-virtual {p6}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addRectangle()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->rectangleId:I

    .line 50
    invoke-virtual {p6}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->addTexture()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->textureId:I

    return-void
.end method


# virtual methods
.method public attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 12

    .line 56
    iget v0, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->textureId:I

    iget-object v1, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setTextureFromBitmap(ILandroid/graphics/Bitmap;)V

    .line 57
    iget v3, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->rectangleId:I

    iget v0, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->coordX:F

    iget v1, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->radius:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->coordY:F

    iget v1, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->radius:F

    sub-float v5, v0, v1

    iget v0, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v6, v1, v0

    iget v0, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->radius:F

    mul-float v7, v1, v0

    iget v9, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->textureId:I

    iget v10, p0, Lcom/eltechs/axs/WheelJoystickVisualizer;->alpha:F

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

.method public turnedAntiClockwise(D)V
    .locals 0

    return-void
.end method

.method public turnedClockwise(D)V
    .locals 0

    return-void
.end method
