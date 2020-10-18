.class public Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "MITShmRequests.java"


# static fields
.field public static final SHARED_PIXMAPS_AVAILABLE:B


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public Attach(IIZBS)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/NewXId;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "SHM_SEGMENTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 68
    iget-object p4, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/XServer;->getShmSegmentsManager()Lcom/eltechs/axs/xserver/ShmSegmentsManager;

    move-result-object p4

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p4, p1, p2, p3}, Lcom/eltechs/axs/xserver/ShmSegmentsManager;->attachSegment(IIZ)Lcom/eltechs/axs/xserver/ShmSegment;

    return-void
.end method

.method public CreatePixmap(ILcom/eltechs/axs/xserver/Drawable;IIBBBBLcom/eltechs/axs/xserver/ShmSegment;I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/NewXId;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
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
    .param p5    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p9    # Lcom/eltechs/axs/xserver/ShmSegment;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "PIXMAPS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 220
    invoke-interface {p9}, Lcom/eltechs/axs/xserver/ShmSegment;->isWritable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 222
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadAccess;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadAccess;-><init>()V

    throw p1

    :cond_0
    const/4 p1, 0x1

    .line 228
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 229
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadImplementation;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadImplementation;-><init>()V

    throw p1
.end method

.method public Detach(Lcom/eltechs/axs/xserver/ShmSegment;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/ShmSegment;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "SHM_SEGMENTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getShmSegmentsManager()Lcom/eltechs/axs/xserver/ShmSegmentsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/ShmSegmentsManager;->detachSegment(Lcom/eltechs/axs/xserver/ShmSegment;)V

    return-void
.end method

.method public GetImage(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Drawable;IIIIILcom/eltechs/axs/requestHandlers/IncomingImageFormat;BBBLcom/eltechs/axs/xserver/ShmSegment;I)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/Drawable;
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
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p9    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p11    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p12    # Lcom/eltechs/axs/xserver/ShmSegment;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p13    # I
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
        opcode = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget-object p7, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->BITMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    if-ne p8, p7, :cond_0

    .line 166
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-virtual {p8}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->ordinal()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 169
    :cond_0
    new-instance p7, Lcom/eltechs/axs/geom/Rectangle;

    invoke-direct {p7, p3, p4, p5, p6}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 170
    iget-object p3, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object p3

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/eltechs/axs/xserver/PixmapsManager;->getPixmap(I)Lcom/eltechs/axs/xserver/Pixmap;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, p4

    .line 171
    :goto_0
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p5

    invoke-virtual {p5}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result p5

    int-to-byte p5, p5

    if-eqz p3, :cond_2

    .line 176
    new-instance p3, Lcom/eltechs/axs/geom/Rectangle;

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result p6

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result p2

    invoke-direct {p3, p4, p4, p6, p2}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 177
    invoke-virtual {p3, p7}, Lcom/eltechs/axs/geom/Rectangle;->containsInnerRectangle(Lcom/eltechs/axs/geom/Rectangle;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 179
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw p1

    .line 184
    :cond_2
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result p4

    .line 187
    :cond_3
    invoke-interface {p12}, Lcom/eltechs/axs/xserver/ShmSegment;->isWritable()Z

    move-result p2

    if-nez p2, :cond_4

    .line 189
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadAccess;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadAccess;-><init>()V

    throw p1

    .line 195
    :cond_4
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 197
    new-instance p2, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$2;

    invoke-direct {p2, p0, p4}, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$2;-><init>(Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;I)V

    invoke-virtual {p1, p5, p2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public PutImage(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/GraphicsContext;IIIIIIIIBLcom/eltechs/axs/requestHandlers/IncomingImageFormat;ZBLcom/eltechs/axs/xserver/ShmSegment;I)V
    .locals 12
    .param p1    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
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

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p11    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p12    # Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p13    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p14    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p15    # Lcom/eltechs/axs/xserver/ShmSegment;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p16    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "SHM_SEGMENTS_MANAGER",
            "DRAWABLES_MANAGER",
            "WINDOWS_MANAGER",
            "PIXMAPS_MANAGER",
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move/from16 v2, p11

    move-object/from16 v0, p12

    if-eqz p13, :cond_0

    .line 102
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 105
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v1

    sget-object v3, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->Z_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    if-eq v0, v1, :cond_1

    const-string v1, "Drawing with GC::Function values other than COPY is not supported yet."

    .line 108
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    .line 115
    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v1

    .line 117
    sget-object v3, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$3;->$SwitchMap$com$eltechs$axs$requestHandlers$IncomingImageFormat:[I

    invoke-virtual/range {p12 .. p12}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    const-string v1, "Unknown IncomingImageFormat %s."

    .line 143
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 137
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    .line 140
    :cond_2
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/GraphicsContext;->getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v3

    invoke-interface/range {p15 .. p15}, Lcom/eltechs/axs/xserver/ShmSegment;->getContent()Ljava/nio/MappedByteBuffer;

    move-result-object v9

    move-object v0, v1

    move-object v1, v3

    move/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move v10, p3

    move/from16 v11, p4

    invoke-interface/range {v0 .. v11}, Lcom/eltechs/axs/xserver/Painter;->drawZPixmap(Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;BIIIIIILjava/nio/ByteBuffer;II)V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 130
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    .line 132
    :cond_3
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    goto :goto_0

    :pswitch_2
    if-eq v2, v4, :cond_4

    .line 122
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    .line 125
    :cond_4
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public QueryVersion(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 2
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
