.class public Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "DrawingRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public ClearArea(Ljava/lang/Boolean;Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3d
    .end annotation

    if-nez p5, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    const-string p1, "ClearArea is not implemented"

    .line 200
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public CopyArea(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;IIIIII)V
    .locals 9
    .param p1    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3e
    .end annotation

    .line 185
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v0

    move-object v1, p3

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-interface/range {v0 .. v8}, Lcom/eltechs/axs/xserver/Painter;->copyArea(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/Drawable;IIIIII)V

    return-void
.end method

.method public GetImage(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;Lcom/eltechs/axs/xserver/Drawable;IIIII)V
    .locals 5
    .param p2    # Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "PIXMAPS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x49
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    sget-object p8, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->BITMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    if-ne p2, p8, :cond_0

    .line 116
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-virtual {p2}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->ordinal()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 119
    :cond_0
    new-instance p8, Lcom/eltechs/axs/geom/Rectangle;

    invoke-direct {p8, p4, p5, p6, p7}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 120
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object v0

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/PixmapsManager;->getPixmap(I)Lcom/eltechs/axs/xserver/Pixmap;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Lcom/eltechs/axs/geom/Rectangle;

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v3

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 127
    invoke-virtual {v0, p8}, Lcom/eltechs/axs/geom/Rectangle;->containsInnerRectangle(Lcom/eltechs/axs/geom/Rectangle;)Z

    move-result p8

    if-nez p8, :cond_2

    .line 129
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw p1

    :cond_2
    move p8, v2

    goto :goto_1

    .line 134
    :cond_3
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p8

    invoke-virtual {p8}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result p8

    .line 138
    :goto_1
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v0

    .line 141
    sget-object v3, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$3;->$SwitchMap$com$eltechs$axs$requestHandlers$IncomingImageFormat:[I

    invoke-virtual {p2}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const-string p4, "Unknown IncomingImageFormat %s."

    .line 152
    new-array p5, v1, [Ljava/lang/Object;

    aput-object p2, p5, v2

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_2

    .line 148
    :pswitch_0
    invoke-interface {v0, p4, p5, p6, p7}, Lcom/eltechs/axs/xserver/Painter;->getZPixmap(IIII)[B

    move-result-object v4

    goto :goto_2

    :pswitch_1
    const-string p2, "Reading data as XY Pixmap is unimplemented yet."

    .line 145
    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    .line 155
    :goto_2
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result p2

    int-to-byte p2, p2

    .line 156
    new-instance p3, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$1;

    invoke-direct {p3, p0, p8}, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;I)V

    array-length p4, v4

    new-instance p5, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$2;

    invoke-direct {p5, p0, v4}, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$2;-><init>(Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;[B)V

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public PolyFillRectangle(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x46
    .end annotation

    .line 219
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-eq v0, v1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object p1

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/GraphicsContext;->getBackground()I

    move-result p2

    invoke-interface {p1, p3, p2}, Lcom/eltechs/axs/xserver/Painter;->drawFilledRectangles(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public PolyLine(Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x41
    .end annotation

    .line 234
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->ORIGIN:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    if-ne p1, v0, :cond_1

    .line 235
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/GraphicsContext;->getLineWidth()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 236
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object p1

    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object p1

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/GraphicsContext;->getForeground()I

    move-result p2

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/GraphicsContext;->getLineWidth()I

    move-result p3

    invoke-interface {p1, p4, p2, p3}, Lcom/eltechs/axs/xserver/Painter;->drawLines(Ljava/nio/ByteBuffer;II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public PolyRectangle(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x43
    .end annotation

    return-void
.end method

.method public PolySegment(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x42
    .end annotation

    return-void
.end method

.method public PutImage(Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;IIIIBBSLjava/nio/ByteBuffer;)V
    .locals 12
    .param p1    # Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p8    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p9    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p11    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "WINDOWS_MANAGER",
            "PIXMAPS_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x48
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move-object v0, p1

    move/from16 v2, p9

    .line 45
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v3

    .line 53
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v4

    sget-object v5, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->Z_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    if-eq v0, v4, :cond_0

    const-string v4, "Drawing with GC::Function values other than COPY is not supported yet."

    .line 56
    invoke-static {v4}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    .line 59
    :cond_0
    sget-object v4, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$3;->$SwitchMap$com$eltechs$axs$requestHandlers$IncomingImageFormat:[I

    invoke-virtual {v0}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    const-string v1, "Unknown IncomingImageFormat %s."

    .line 98
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_1

    .line 91
    :pswitch_0
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p11

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v0 .. v11}, Lcom/eltechs/axs/xserver/Painter;->drawZPixmap(Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;BIIIIIILjava/nio/ByteBuffer;II)V

    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    .line 84
    :pswitch_1
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 87
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    :pswitch_2
    if-eqz p8, :cond_3

    const-string v0, "PutImage.leftPad != 0 not implemented yet"

    .line 65
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    :cond_3
    if-eq v2, v5, :cond_4

    .line 78
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    :cond_4
    move-object v0, v3

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p11

    .line 81
    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/Painter;->drawBitmap(IIIILjava/nio/ByteBuffer;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
