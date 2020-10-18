.class public Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "GLXRequests.java"


# static fields
.field private static final latin1:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "latin1"

    .line 29
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->latin1:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method

.method private static CheckGLXScreenValid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 27
    sget-object v0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->latin1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;)Lcom/eltechs/axs/xserver/XServer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object p0
.end method


# virtual methods
.method public CreateContext(ILcom/eltechs/axs/xserver/impl/drawables/Visual;IIZBS)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/impl/drawables/Visual;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER"
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

    .line 243
    invoke-static {p3}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->CheckGLXScreenValid(I)V

    return-void
.end method

.method public GetFBConfigs(Lcom/eltechs/axs/xconnectors/XResponse;I)V
    .locals 3
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 154
    invoke-static {p2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->CheckGLXScreenValid(I)V

    .line 156
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/DrawablesManager;->getSupportedVisuals()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 159
    new-instance v0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$6;

    invoke-direct {v0, p0, p2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$6;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;I)V

    mul-int/lit8 p2, p2, 0x2c

    mul-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x4

    new-instance v1, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$7;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$7;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, p2, v1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public GetVisualConfigs(Lcom/eltechs/axs/xconnectors/XResponse;I)V
    .locals 3
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 122
    invoke-static {p2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->CheckGLXScreenValid(I)V

    .line 124
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/DrawablesManager;->getSupportedVisuals()Ljava/util/Collection;

    move-result-object p2

    .line 125
    new-instance v0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/proto/output/replies/VisualConfig;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    invoke-static {v0}, Lcom/eltechs/axs/proto/output/PODWriter;->getOnWireLength(Ljava/lang/Object;)I

    move-result v0

    .line 127
    new-instance v1, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;

    invoke-direct {v1, p0, p2, v0}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;Ljava/util/Collection;I)V

    .line 136
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/2addr v0, v2

    new-instance v2, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$5;

    invoke-direct {v2, p0, p2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$5;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 127
    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public QueryServerString(Lcom/eltechs/axs/xconnectors/XResponse;II)V
    .locals 3
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "RENDERING_ENGINE"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 79
    invoke-static {p2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->CheckGLXScreenValid(I)V

    packed-switch p3, :pswitch_data_0

    .line 93
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p3}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 90
    :pswitch_0
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getRenderingEngine()Lcom/eltechs/axs/rendering/RenderingEngine;

    move-result-object p2

    invoke-interface {p2}, Lcom/eltechs/axs/rendering/RenderingEngine;->getGLXExtensionsList()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    const-string p2, "1.4"

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getRenderingEngine()Lcom/eltechs/axs/rendering/RenderingEngine;

    move-result-object p2

    invoke-interface {p2}, Lcom/eltechs/axs/rendering/RenderingEngine;->getVendor()Ljava/lang/String;

    move-result-object p2

    .line 96
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    .line 98
    new-instance v1, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$2;

    invoke-direct {v1, p0, p3}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$2;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;I)V

    new-instance v2, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$3;

    invoke-direct {v2, p0, p2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$3;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public QueryVersion(Lcom/eltechs/axs/xconnectors/XResponse;II)V
    .locals 0
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance p2, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public SetClientInfo2ARB(IIIIILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x23
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    return-void
.end method
