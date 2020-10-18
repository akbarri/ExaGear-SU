.class public Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;
.super Ljava/lang/Object;
.source "TrivialTexturesManager.java"

# interfaces
.implements Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;


# instance fields
.field private textureSizes:[I

.field private textures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "axs-helpers"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native setTextureFromDrawableImpl15(IIIJ)V
.end method

.method private native setTextureFromDrawableImpl16(IIIJ)V
.end method

.method private native setTextureFromDrawableImpl32(IIIJ)V
.end method


# virtual methods
.method public allocateTextures(I)Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->freeTextures()V

    .line 34
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    mul-int/lit8 v0, p1, 0x2

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textureSizes:[I

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public freeTextures()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    :cond_0
    return-void
.end method

.method public getTextureId(I)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    aget p1, v0, p1

    return p1
.end method

.method public getTextureSize(I[I)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textureSizes:[I

    const/4 v1, 0x2

    mul-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x0

    aget p1, v0, p1

    const/4 v0, 0x0

    aput p1, p2, v0

    .line 89
    iget-object p1, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textureSizes:[I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    aget p1, p1, v1

    aput p1, p2, v0

    return-void
.end method

.method public setTextureSize(III)Z
    .locals 11

    .line 60
    invoke-static {}, Lcom/eltechs/axs/helpers/GLHelpers;->have_GL_OES_texture_npot()Z

    move-result v0

    if-eqz v0, :cond_0

    move v5, p2

    move v6, p3

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p2}, Lcom/eltechs/axs/helpers/MathHelpers;->upperPOT(I)I

    move-result v0

    .line 67
    invoke-static {p3}, Lcom/eltechs/axs/helpers/MathHelpers;->upperPOT(I)I

    move-result v1

    move v5, v0

    move v6, v1

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    aget v0, v0, p1

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 71
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 72
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 73
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 74
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    .line 75
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textureSizes:[I

    const/4 v1, 0x2

    mul-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x0

    aput p2, v0, p1

    .line 80
    iget-object p1, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textureSizes:[I

    const/4 p2, 0x1

    add-int/2addr v1, p2

    aput p3, p1, v1

    return p2
.end method

.method public updateTextureFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    aget p1, v0, p1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x0

    .line 139
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public updateTextureFromDrawable(ILcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V
    .locals 7

    .line 101
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string p1, "Unsupported depth %s."

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    aget v2, v0, p1

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->setTextureFromDrawableImpl16(IIIJ)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    aget v2, v0, p1

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->setTextureFromDrawableImpl15(IIIJ)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->textures:[I

    aget v2, v0, p1

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;->setTextureFromDrawableImpl32(IIIJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
