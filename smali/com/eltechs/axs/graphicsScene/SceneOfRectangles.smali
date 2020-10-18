.class public Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;
.super Ljava/lang/Object;
.source "SceneOfRectangles.java"


# static fields
.field private static final DEPTH_OF_SCENE:F = 1024.0f


# instance fields
.field private final have_GL_OES_texture_npot:Z

.field private final imageTransformationMatrix:[F

.field private final nRectangles:I

.field private final nTextures:I

.field private sceneData:J
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private texturerDynamicAlpha:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private texturerStaticAlpha:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private final texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

.field private final viewportAdjustmentMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "axs-helpers"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of SceneOfRectangles do not match one another."

    .line 40
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 57
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->imageTransformationMatrix:[F

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    .line 81
    iput p1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nRectangles:I

    .line 82
    iput p2, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nTextures:I

    .line 84
    invoke-static {}, Lcom/eltechs/axs/helpers/GLHelpers;->have_GL_OES_texture_npot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->have_GL_OES_texture_npot:Z

    const/4 v0, 0x1

    .line 86
    invoke-static {v0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->createTexturer(Z)I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturerStaticAlpha:I

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->createTexturer(Z)I

    move-result v1

    iput v1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturerDynamicAlpha:I

    .line 89
    invoke-static {}, Lcom/eltechs/axs/graphicsScene/impl/TextureManagersFactory;->createTexturesManager()Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    .line 91
    iget-object v1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->imageTransformationMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 92
    iget-object v1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v0, p2}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->allocateTextures(I)Z

    .line 95
    invoke-direct {p0, p1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->allocateNativeSceneData(I)V

    return-void
.end method

.method private native allocateNativeSceneData(I)V
.end method

.method private static createTexturer(Z)I
    .locals 3

    if-eqz p0, :cond_0

    const-string p0, "precision mediump float;                                   \nuniform sampler2D u_Texture;                               \nuniform float u_Alpha;varying vec2 v_TexCoordinate;                              \nvoid main()                                                \n{                                                          \n   vec4 tc = texture2D(u_Texture, v_TexCoordinate);        \n   gl_FragColor = vec4(tc.rgb, u_Alpha);}                                                          \n"

    goto :goto_0

    :cond_0
    const-string p0, "precision mediump float;                                   \nuniform sampler2D u_Texture;                               \nuniform float u_Alpha;varying vec2 v_TexCoordinate;                              \nvoid main()                                                \n{                                                          \n   vec4 tc = texture2D(u_Texture, v_TexCoordinate);        \n   gl_FragColor = vec4(tc.rgb, u_Alpha * tc.a);            \n}                                                          \n"

    :goto_0
    const-string v0, "a_Position"

    const-string v1, "a_TexCoordinate"

    .line 318
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->VERTEX:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    const-string v2, "uniform mat4 u_MVP;                                        \nattribute vec4 a_Position;                                 \nattribute vec2 a_TexCoordinate;                            \nvarying vec2 v_TexCoordinate;                              \nvoid main()                                                \n{                                                          \n   v_TexCoordinate = a_TexCoordinate;                      \n   gl_Position = u_MVP * a_Position;                       \n}                                                          \n"

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/ShaderHelpers;->compileShader(Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;Ljava/lang/String;)I

    move-result v1

    .line 324
    sget-object v2, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->FRAGMENT:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    invoke-static {v2, p0}, Lcom/eltechs/axs/helpers/ShaderHelpers;->compileShader(Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;Ljava/lang/String;)I

    move-result p0

    .line 326
    invoke-static {v1, p0, v0}, Lcom/eltechs/axs/helpers/ShaderHelpers;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private native freeNativeSceneData()V
.end method

.method private static native initialiseNativeParts()Z
.end method

.method private native moveRectangleImpl(IFFFFF)V
.end method

.method private native placeRectangleImpl(IFFFFFIFFFZ)V
.end method

.method private native setMVPMatrix([F)V
.end method

.method private updateMVPMatrix()V
    .locals 8

    const/16 v0, 0x10

    .line 165
    new-array v7, v0, [F

    .line 166
    iget-object v1, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->imageTransformationMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v3, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 169
    invoke-direct {p0, v7}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setMVPMatrix([F)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v0}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->freeTextures()V

    .line 103
    invoke-direct {p0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->freeNativeSceneData()V

    return-void
.end method

.method public synchronized native draw()V
.end method

.method public declared-synchronized moveRectangle(IFFFFF)V
    .locals 2

    monitor-enter p0

    .line 242
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nRectangles:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid rectangle number"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 243
    invoke-direct/range {p0 .. p6}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->moveRectangleImpl(IFFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 241
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized placeRectangle(IFFFFFIFZ)V
    .locals 14

    move-object v13, p0

    move/from16 v1, p7

    monitor-enter p0

    .line 201
    :try_start_0
    iget v2, v13, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nRectangles:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, p1

    if-ge v5, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v6, "Invalid rectangle number"

    invoke-static {v2, v6}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 202
    iget v2, v13, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nTextures:I

    if-ge v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v6, "Invalid texture number"

    invoke-static {v2, v6}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 205
    iget-boolean v2, v13, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->have_GL_OES_texture_npot:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    move v9, v6

    move v10, v9

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    .line 211
    new-array v2, v2, [I

    .line 212
    iget-object v6, v13, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v6, v1, v2}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->getTextureSize(I[I)V

    .line 214
    aget v6, v2, v3

    int-to-float v6, v6

    aget v3, v2, v3

    invoke-static {v3}, Lcom/eltechs/axs/helpers/MathHelpers;->upperPOT(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 215
    aget v3, v2, v4

    int-to-float v3, v3

    aget v2, v2, v4

    invoke-static {v2}, Lcom/eltechs/axs/helpers/MathHelpers;->upperPOT(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    move v10, v3

    move v9, v6

    .line 218
    :goto_2
    iget-object v2, v13, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    .line 220
    invoke-interface {v2, v1}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->getTextureId(I)I

    move-result v8

    move-object v1, v13

    move v2, v5

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v11, p8

    move/from16 v12, p9

    .line 218
    invoke-direct/range {v1 .. v12}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->placeRectangleImpl(IFFFFFIFFFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 200
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSceneViewport(FFFF)V
    .locals 8

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->imageTransformationMatrix:[F

    const/4 v1, 0x0

    add-float v3, p1, p3

    sub-float v4, p2, p4

    const/high16 v6, 0x44800000    # 1024.0f

    const/high16 v7, -0x3b800000    # -1024.0f

    move v2, p1

    move v5, p2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 150
    invoke-direct {p0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->updateMVPMatrix()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 144
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSceneViewport(Lcom/eltechs/axs/geom/RectangleF;)V
    .locals 3

    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p1, Lcom/eltechs/axs/geom/RectangleF;->x:F

    iget v1, p1, Lcom/eltechs/axs/geom/RectangleF;->y:F

    iget v2, p1, Lcom/eltechs/axs/geom/RectangleF;->width:F

    iget p1, p1, Lcom/eltechs/axs/geom/RectangleF;->height:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->setSceneViewport(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 159
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTextureFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    .line 262
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nTextures:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid texture number"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->setTextureSize(III)Z

    .line 265
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->updateTextureFromBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTextureSize(III)V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nTextures:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid texture number."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->setTextureSize(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setViewport(FFFF)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v2, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 128
    iget-object v4, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v7, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v8, v2, v3

    const/high16 v2, -0x40000000    # -2.0f

    mul-float v2, v2, p2

    add-float v9, v2, v3

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 129
    iget-object v11, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v14, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    .line 130
    iget-object v2, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->viewportAdjustmentMatrix:[F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->updateMVPMatrix()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 119
    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateTextureFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nTextures:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid texture number"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->updateTextureFromBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 254
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureFromDrawable(ILcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V
    .locals 2

    monitor-enter p0

    .line 248
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->nTextures:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid texture number"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->texturesManager:Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;->updateTextureFromDrawable(ILcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 247
    monitor-exit p0

    throw p1
.end method
