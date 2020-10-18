.class public Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;
.super Ljava/lang/Object;
.source "PainterOnBitmap.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Painter;


# static fields
.field public static final ALPHA_PIXEL:I = 0x0

.field public static final BLACK_PIXEL:I = -0x1000000

.field public static final WHITE_PIXEL:I = -0x1


# instance fields
.field private final arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final drawable:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

.field private final height:I

.field private modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "axs-helpers"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;II)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    .line 45
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 47
    iput p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->width:I

    .line 48
    iput p4, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->height:I

    return-void
.end method

.method private drawBitmapImpl(IIIILjava/nio/ByteBuffer;)V
    .locals 10

    .line 284
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    mul-int v1, p3, p4

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->getIntArray(I)[I

    move-result-object v0

    const/4 v6, 0x4

    const/high16 v7, -0x1000000

    const/4 v8, -0x1

    move-object v2, p0

    move-object v3, p5

    move v4, p3

    move v5, p4

    move-object v9, v0

    .line 285
    invoke-direct/range {v2 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->readBitmap(Ljava/nio/ByteBuffer;IIIII[I)V

    .line 286
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object v3, v0

    move v5, p3

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private drawZPixmap24(IIIILjava/nio/ByteBuffer;)V
    .locals 14

    move-object v8, p0

    move v0, p1

    move/from16 v1, p2

    move/from16 v9, p3

    .line 252
    new-instance v2, Lcom/eltechs/axs/geom/Rectangle;

    move/from16 v3, p4

    invoke-direct {v2, v0, v1, v9, v3}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 253
    new-instance v4, Lcom/eltechs/axs/geom/Rectangle;

    iget-object v5, v8, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, v8, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 254
    invoke-static {v2, v4}, Lcom/eltechs/axs/geom/Rectangle;->getIntersection(Lcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;)Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    .line 262
    :cond_0
    iget v11, v10, Lcom/eltechs/axs/geom/Rectangle;->width:I

    .line 263
    iget v12, v10, Lcom/eltechs/axs/geom/Rectangle;->height:I

    .line 264
    iget v2, v10, Lcom/eltechs/axs/geom/Rectangle;->x:I

    sub-int v4, v2, v0

    add-int/2addr v0, v9

    add-int/lit8 v0, v0, -0x1

    .line 265
    iget v2, v10, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v5, v10, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v0, v2

    .line 266
    iget v0, v10, Lcom/eltechs/axs/geom/Rectangle;->y:I

    sub-int v6, v0, v1

    .line 268
    iget-object v0, v8, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    mul-int v1, v11, v12

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->getIntArray(I)[I

    move-result-object v13

    move-object v0, v8

    move-object/from16 v1, p5

    move v2, v9

    move-object v7, v13

    .line 269
    invoke-direct/range {v0 .. v7}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->readZPixmap24(Ljava/nio/ByteBuffer;IIIII[I)V

    .line 270
    iget-object v0, v8, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v4, v10, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v5, v10, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move-object v1, v13

    move v3, v9

    move v6, v11

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private getZPixmap24(IIII)[B
    .locals 11

    mul-int v0, p3, p4

    mul-int/lit8 v1, v0, 0x4

    .line 306
    new-array v2, v1, [B

    .line 307
    new-array v0, v0, [I

    .line 308
    iget-object v3, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object v4, v0

    move v6, p3

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :goto_0
    if-ge p2, v1, :cond_0

    add-int/lit8 p4, p2, 0x0

    .line 312
    aget v3, v0, p3

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    add-int/lit8 p4, p2, 0x1

    .line 313
    aget v3, v0, p3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    add-int/lit8 p4, p2, 0x2

    .line 314
    aget v3, v0, p3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    add-int/lit8 p4, p2, 0x3

    .line 315
    aput-byte p1, v2, p4

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private makeVisibleRGBPixel(III)I
    .locals 1

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private native readBitmap(Ljava/nio/ByteBuffer;IIIII[I)V
.end method

.method private native readZPixmap24(Ljava/nio/ByteBuffer;IIIII[I)V
.end method


# virtual methods
.method public copyArea(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/Drawable;IIIIII)V
    .locals 15

    move-object v0, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v9, p7

    move/from16 v5, p8

    .line 121
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v6

    .line 122
    sget-object v7, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NO_OP:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v6, v7, :cond_0

    return-void

    .line 127
    :cond_0
    move-object/from16 v7, p2

    check-cast v7, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

    invoke-virtual {v7}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->getContent()Landroid/graphics/Bitmap;

    move-result-object v7

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    add-int v8, p3, v9

    .line 135
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-gt v8, v10, :cond_1

    add-int v8, p4, v5

    .line 136
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v8, v10, :cond_2

    .line 138
    :cond_1
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 141
    :cond_2
    new-instance v8, Lcom/eltechs/axs/geom/Rectangle;

    invoke-direct {v8, v3, v4, v9, v5}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 142
    new-instance v5, Lcom/eltechs/axs/geom/Rectangle;

    iget-object v10, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v11, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v5, v12, v12, v10, v11}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 143
    invoke-static {v8, v5}, Lcom/eltechs/axs/geom/Rectangle;->getIntersection(Lcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;)Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v10

    if-nez v10, :cond_3

    return-void

    .line 151
    :cond_3
    iget v5, v10, Lcom/eltechs/axs/geom/Rectangle;->x:I

    sub-int/2addr v5, v3

    .line 152
    iget v3, v10, Lcom/eltechs/axs/geom/Rectangle;->y:I

    sub-int/2addr v3, v4

    add-int v5, p3, v5

    add-int v8, p4, v3

    .line 155
    iget v11, v10, Lcom/eltechs/axs/geom/Rectangle;->width:I

    .line 156
    iget v13, v10, Lcom/eltechs/axs/geom/Rectangle;->height:I

    mul-int v1, v11, v13

    .line 159
    iget-object v2, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->getIntArray(I)[I

    move-result-object v14

    .line 161
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v6, v2, :cond_4

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, v14

    move v4, v9

    move v6, v8

    move v7, v11

    move v8, v13

    .line 163
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_1

    .line 164
    :cond_4
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->CLEAR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-eq v6, v2, :cond_5

    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->SET:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v6, v2, :cond_7

    .line 167
    :cond_5
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->CLEAR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v6, v2, :cond_6

    const/high16 v2, -0x1000000

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    :goto_0
    if-ge v12, v1, :cond_7

    .line 170
    aput v2, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 176
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v5, v10, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v6, v10, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move-object v2, v14

    move v4, v9

    move v7, v11

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 177
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

    iget v2, v10, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v3, v10, Lcom/eltechs/axs/geom/Rectangle;->y:I

    invoke-interface {v1, v2, v3, v11, v13}, Lcom/eltechs/axs/xserver/Drawable$ModificationListener;->changed(IIII)V

    return-void
.end method

.method public drawAlphaMaskedBitmap(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;IIIIII)V
    .locals 15

    move-object v0, p0

    .line 190
    move-object/from16 v1, p1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->getContent()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 194
    move-object/from16 v2, p2

    check-cast v2, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->getContent()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v3, p4

    move/from16 v4, p5

    move-object v5, v2

    move/from16 v2, p3

    .line 197
    invoke-direct {v0, v2, v3, v4}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->makeVisibleRGBPixel(III)I

    move-result v2

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v6, p8

    .line 198
    invoke-direct {v0, v3, v4, v6}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->makeVisibleRGBPixel(III)I

    move-result v3

    .line 199
    iget-object v4, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 200
    iget-object v4, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v4, v12, v13

    .line 201
    new-array v7, v4, [I

    const/4 v4, 0x0

    move v6, v4

    move v8, v6

    :goto_1
    if-ge v6, v13, :cond_4

    move v9, v8

    move v8, v4

    :goto_2
    if-ge v8, v12, :cond_3

    .line 209
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    const/high16 v11, -0x1000000

    if-ne v10, v11, :cond_1

    move v10, v2

    goto :goto_3

    :cond_1
    move v10, v3

    :goto_3
    if-eqz p2, :cond_2

    .line 212
    invoke-virtual {v5, v8, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    move v10, v4

    :cond_2
    add-int/lit8 v11, v9, 0x1

    .line 217
    aput v10, v7, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_1

    .line 221
    :cond_4
    iget-object v6, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public drawBitmap(IIIILjava/nio/ByteBuffer;)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->drawBitmapImpl(IIIILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public drawFilledRectangles(Ljava/nio/ByteBuffer;I)V
    .locals 0

    return-void
.end method

.method public drawLines(Ljava/nio/ByteBuffer;II)V
    .locals 0

    return-void
.end method

.method public drawZPixmap(Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;BIIIIIILjava/nio/ByteBuffer;II)V
    .locals 6

    move v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "Sorting out unsupported pixmap depths must be done in protocol handlers."

    .line 75
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p7

    move v4, p8

    move-object v5, p9

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->drawZPixmap24(IIIILjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p7

    move v4, p8

    move-object v5, p9

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->drawBitmapImpl(IIIILjava/nio/ByteBuffer;)V

    .line 78
    :goto_0
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

    move v2, p3

    move v3, p4

    move v4, p7

    move v5, p8

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/eltechs/axs/xserver/Drawable$ModificationListener;->changed(IIII)V

    return-void
.end method

.method public fillWithColor(I)V
    .locals 0

    return-void
.end method

.method public getZPixmap(IIII)[B
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    const-string p2, "Sorting out unsupported pixmap depths must be done in protocol handlers."

    .line 90
    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->getZPixmap24(IIII)[B

    move-result-object p1

    return-object p1
.end method

.method public setModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

    return-void
.end method
