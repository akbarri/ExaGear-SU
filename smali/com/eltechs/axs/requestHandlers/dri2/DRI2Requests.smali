.class public Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "DRI2Requests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
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
        opcode = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance p2, Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests$1;-><init>(Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
