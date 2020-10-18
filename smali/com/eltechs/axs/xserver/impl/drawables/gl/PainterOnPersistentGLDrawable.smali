.class public Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;
.super Ljava/lang/Object;
.source "PainterOnPersistentGLDrawable.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Painter;


# static fields
.field public static final ALPHA_PIXEL:I = 0x0

.field public static final BLACK_PIXEL:I = -0x1000000

.field public static final WHITE_PIXEL:I = -0x1


# instance fields
.field private final drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

.field private modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "axs-helpers"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    return-void
.end method

.method private native copyPixmapArea(JJIIIIIIIIII)V
.end method

.method private native copyPixmapAreaAnd(JJIIIIIIIIII)V
.end method

.method private native copyPixmapAreaAndReverse(JJIIIIIIIIII)V
.end method

.method private native copyPixmapAreaOr(JJIIIIIIIIII)V
.end method

.method private native copyPixmapAreaOrReverse(JJIIIIIIIIII)V
.end method

.method private native drawAlphaMaskedBitmapImpl(JJJIIIIIIIIIII)V
.end method

.method private native drawBitmapImpl(Ljava/nio/ByteBuffer;JIIIII)V
.end method

.method private native drawFilledRectangles(Ljava/nio/ByteBuffer;IIJIII)V
.end method

.method private native drawLines(Ljava/nio/ByteBuffer;IIJIII)V
.end method

.method private drawZPixmap16(Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 15

    move-object v14, p0

    .line 330
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 344
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    .line 339
    :pswitch_0
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 340
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v6

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v8

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v9

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 339
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmapS16D16(Ljava/nio/ByteBuffer;IIIIJIIIIII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawZPixmap16AND(Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 15

    move-object v14, p0

    .line 376
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 390
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 386
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v6

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v8

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v9

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 385
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmapS16D16AND(Ljava/nio/ByteBuffer;IIIIJIIIIII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawZPixmap16XOR(Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 15

    move-object v14, p0

    .line 353
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 367
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    .line 362
    :pswitch_0
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 363
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v6

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v8

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v9

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 362
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmapS16D16XOR(Ljava/nio/ByteBuffer;IIIIJIIIIII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawZPixmap32(Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 15

    move-object v14, p0

    .line 399
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 407
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 403
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v6

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v8

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v9

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 402
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmapS32D32(Ljava/nio/ByteBuffer;IIIIJIIIIII)V

    :goto_0
    return-void
.end method

.method private drawZPixmap32AND(Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 15

    move-object v14, p0

    .line 433
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 441
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 437
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v6

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v8

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v9

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 436
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmapS32D32AND(Ljava/nio/ByteBuffer;IIIIJIIIIII)V

    :goto_0
    return-void
.end method

.method private drawZPixmap32XOR(Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 15

    move-object v14, p0

    .line 416
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 424
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 420
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v6

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v8

    iget-object v0, v14, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v9

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 419
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmapS32D32XOR(Ljava/nio/ByteBuffer;IIIIJIIIIII)V

    :goto_0
    return-void
.end method

.method private native drawZPixmapS16D16(Ljava/nio/ByteBuffer;IIIIJIIIIII)V
.end method

.method private native drawZPixmapS16D16AND(Ljava/nio/ByteBuffer;IIIIJIIIIII)V
.end method

.method private native drawZPixmapS16D16XOR(Ljava/nio/ByteBuffer;IIIIJIIIIII)V
.end method

.method private native drawZPixmapS32D32(Ljava/nio/ByteBuffer;IIIIJIIIIII)V
.end method

.method private native drawZPixmapS32D32AND(Ljava/nio/ByteBuffer;IIIIJIIIIII)V
.end method

.method private native drawZPixmapS32D32XOR(Ljava/nio/ByteBuffer;IIIIJIIIIII)V
.end method

.method private native getZPixmap16([BIIIIJII)V
.end method

.method private native getZPixmap32([BIIIIJII)V
.end method

.method private native setPixmapArea(JIIIIIII)V
.end method


# virtual methods
.method public copyArea(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/Drawable;IIIIII)V
    .locals 25

    move-object/from16 v15, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v6

    .line 51
    sget-object v7, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NO_OP:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    add-int v7, p3, v4

    .line 62
    invoke-interface/range {p2 .. p2}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_1

    add-int v7, p4, v5

    .line 63
    invoke-interface/range {p2 .. p2}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 65
    :cond_1
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 68
    :cond_2
    new-instance v7, Lcom/eltechs/axs/geom/Rectangle;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 69
    new-instance v4, Lcom/eltechs/axs/geom/Rectangle;

    iget-object v5, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v5

    iget-object v8, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v8}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9, v5, v8}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 70
    invoke-static {v7, v4}, Lcom/eltechs/axs/geom/Rectangle;->getIntersection(Lcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;)Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v14

    if-nez v14, :cond_3

    return-void

    .line 78
    :cond_3
    iget v4, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    sub-int/2addr v4, v2

    .line 79
    iget v2, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    sub-int/2addr v2, v3

    add-int v11, p3, v4

    add-int v12, p4, v2

    .line 82
    iget v13, v14, Lcom/eltechs/axs/geom/Rectangle;->width:I

    .line 83
    iget v10, v14, Lcom/eltechs/axs/geom/Rectangle;->height:I

    .line 85
    move-object/from16 v0, p2

    check-cast v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 87
    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    move/from16 v18, v10

    move/from16 v19, v13

    move-object/from16 v24, v14

    goto/16 :goto_1

    .line 133
    :pswitch_0
    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v3

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v4

    iget v7, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v8, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    const/4 v9, -0x1

    move-object v0, v15

    move v5, v13

    move v6, v10

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->setPixmapArea(JIIIIIII)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v3

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v4

    iget v7, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v8, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    const/high16 v9, -0x1000000

    move-object v0, v15

    move v5, v13

    move v6, v10

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->setPixmapArea(JIIIIIII)V

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v3, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v3

    .line 123
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v6

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 124
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    iget v9, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v0, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v9

    move v9, v13

    move/from16 v18, v10

    move/from16 v19, v13

    move/from16 v13, v17

    move-object/from16 v20, v14

    move/from16 v14, v16

    .line 122
    invoke-direct/range {v0 .. v14}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->copyPixmapAreaOr(JJIIIIIIIIII)V

    move-object/from16 v24, v20

    goto/16 :goto_1

    :pswitch_3
    move/from16 v18, v10

    move/from16 v19, v13

    move-object/from16 v20, v14

    .line 114
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v3, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v3

    .line 115
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v6

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 116
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    iget v13, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v10, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move-object v0, v15

    move/from16 v9, v19

    move/from16 v16, v10

    move/from16 v10, v18

    move-object/from16 v21, v14

    move/from16 v14, v16

    .line 114
    invoke-direct/range {v0 .. v14}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->copyPixmapAreaAnd(JJIIIIIIIIII)V

    move-object/from16 v24, v21

    goto/16 :goto_1

    :pswitch_4
    move/from16 v18, v10

    move/from16 v19, v13

    move-object/from16 v21, v14

    .line 106
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v3, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v3

    .line 107
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v6

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 108
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    iget v13, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v10, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move-object v0, v15

    move/from16 v9, v19

    move/from16 v16, v10

    move/from16 v10, v18

    move-object/from16 v22, v14

    move/from16 v14, v16

    .line 106
    invoke-direct/range {v0 .. v14}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->copyPixmapAreaOrReverse(JJIIIIIIIIII)V

    move-object/from16 v24, v22

    goto/16 :goto_1

    :pswitch_5
    move/from16 v18, v10

    move/from16 v19, v13

    move-object/from16 v22, v14

    .line 98
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v3, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v3

    .line 99
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v6

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 100
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    iget v13, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v10, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move-object v0, v15

    move/from16 v9, v19

    move/from16 v16, v10

    move/from16 v10, v18

    move-object/from16 v23, v14

    move/from16 v14, v16

    .line 98
    invoke-direct/range {v0 .. v14}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->copyPixmapAreaAndReverse(JJIIIIIIIIII)V

    move-object/from16 v24, v23

    goto :goto_1

    :pswitch_6
    move/from16 v18, v10

    move/from16 v19, v13

    move-object/from16 v23, v14

    .line 90
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    iget-object v3, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v3

    .line 91
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v6

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 92
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    iget v13, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v10, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move-object v0, v15

    move/from16 v9, v19

    move/from16 v16, v10

    move/from16 v10, v18

    move-object/from16 v24, v14

    move/from16 v14, v16

    .line 90
    invoke-direct/range {v0 .. v14}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->copyPixmapArea(JJIIIIIIIIII)V

    .line 140
    :goto_1
    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

    move-object/from16 v1, v24

    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v1, v1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    move/from16 v4, v18

    move/from16 v3, v19

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/eltechs/axs/xserver/Drawable$ModificationListener;->changed(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawAlphaMaskedBitmap(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;IIIIII)V
    .locals 19

    move-object/from16 v15, p0

    .line 244
    iget-object v1, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v1

    move-object/from16 v3, p1

    check-cast v3, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 245
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v3

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    check-cast v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 246
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 247
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, v15, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    .line 248
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    const/16 v16, -0x1

    const/high16 v17, -0x1000000

    const/16 v18, 0x0

    move-object v0, v15

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    .line 244
    invoke-direct/range {v0 .. v17}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawAlphaMaskedBitmapImpl(JJJIIIIIIIIIII)V

    return-void
.end method

.method public drawBitmap(IIIILjava/nio/ByteBuffer;)V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v0

    if-ne p4, v0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 148
    :cond_0
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v2

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    const/4 v8, 0x4

    move-object v0, p0

    move-object v1, p5

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawBitmapImpl(Ljava/nio/ByteBuffer;JIIIII)V

    return-void
.end method

.method public drawFilledRectangles(Ljava/nio/ByteBuffer;I)V
    .locals 10

    .line 305
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v9

    const/16 v0, 0x20

    if-eq v9, v0, :cond_0

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 311
    :cond_0
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/lit8 v3, v0, 0x8

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v5

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawFilledRectangles(Ljava/nio/ByteBuffer;IIJIII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public drawLines(Ljava/nio/ByteBuffer;II)V
    .locals 10

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p3

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v9

    const/16 p3, 0x20

    if-eq v9, p3, :cond_1

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 297
    :cond_1
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    add-int/lit8 v3, p3, -0x1

    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v5

    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v7

    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawLines(Ljava/nio/ByteBuffer;IIJIII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public drawZPixmap(Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;BIIIIIILjava/nio/ByteBuffer;II)V
    .locals 12

    move-object v10, p0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    .line 163
    new-instance v4, Lcom/eltechs/axs/geom/Rectangle;

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 164
    new-instance v5, Lcom/eltechs/axs/geom/Rectangle;

    iget-object v6, v10, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v6

    iget-object v7, v10, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v7}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 165
    invoke-static {v4, v5}, Lcom/eltechs/axs/geom/Rectangle;->getIntersection(Lcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;)Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    .line 173
    :cond_0
    iget v4, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    sub-int/2addr v4, v2

    add-int v4, p5, v4

    .line 174
    iget v2, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    sub-int/2addr v2, v3

    add-int v5, p6, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    const-string v0, "Sorting out unsupported pixmap depths must be done in protocol handlers."

    .line 235
    invoke-static {v8, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :pswitch_0
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v0, v1, :cond_1

    .line 194
    iget v6, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v7, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v8, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v9, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmap16(Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/16 :goto_0

    .line 197
    :cond_1
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v0, v1, :cond_2

    .line 199
    iget v6, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v7, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v8, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v9, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmap16AND(Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/16 :goto_0

    .line 202
    :cond_2
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->XOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v0, v1, :cond_3

    .line 204
    iget v6, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v7, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v8, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v9, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmap16XOR(Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "drawZPixmap 15/16 bit depth::Function values other than COPY/AND/XOR is not supported yet."

    .line 209
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_4
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v0, v1, :cond_5

    .line 216
    iget v6, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v7, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v8, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v9, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmap32(Ljava/nio/ByteBuffer;IIIIIIII)V

    goto :goto_0

    .line 219
    :cond_5
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v0, v1, :cond_6

    .line 221
    iget v6, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v7, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v8, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v9, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmap32AND(Ljava/nio/ByteBuffer;IIIIIIII)V

    goto :goto_0

    .line 224
    :cond_6
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->XOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-ne v0, v1, :cond_7

    .line 226
    iget v6, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v7, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v8, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v9, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawZPixmap32XOR(Ljava/nio/ByteBuffer;IIIIIIII)V

    goto :goto_0

    :cond_7
    const-string v0, "drawZPixmap 32 bit depth::Function values other than COPY/AND/XOR is not supported yet."

    .line 231
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_8
    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-eq v0, v1, :cond_9

    const-string v0, "drawZPixmap bitmap::Function values other than COPY is not supported yet."

    .line 181
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    .line 183
    :cond_9
    iget-object v0, v10, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v2

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    const/4 v8, 0x4

    move-object v0, v10

    move-object/from16 v1, p9

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawBitmapImpl(Ljava/nio/ByteBuffer;JIIIII)V

    .line 238
    :goto_0
    iget-object v0, v10, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

    iget v1, v11, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v2, v11, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v3, v11, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v4, v11, Lcom/eltechs/axs/geom/Rectangle;->height:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/eltechs/axs/xserver/Drawable$ModificationListener;->changed(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fillWithColor(I)V
    .locals 0

    return-void
.end method

.method public getZPixmap(IIII)[B
    .locals 11

    .line 257
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 272
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    .line 267
    new-array v0, v0, [B

    .line 268
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v7

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v9

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v10

    move-object v1, p0

    move-object v2, v0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v10}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->getZPixmap32([BIIIIJII)V

    return-object v0

    :cond_1
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x2

    .line 261
    new-array v0, v0, [B

    .line 262
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v7

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getWidth()I

    move-result v9

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->drawable:Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getHeight()I

    move-result v10

    move-object v1, p0

    move-object v2, v0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v10}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->getZPixmap16([BIIIIJII)V

    return-object v0
.end method

.method public setModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->modificationListener:Lcom/eltechs/axs/xserver/Drawable$ModificationListener;

    return-void
.end method
