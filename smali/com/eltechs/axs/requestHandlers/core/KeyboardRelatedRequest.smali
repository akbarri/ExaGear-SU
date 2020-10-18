.class public Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "KeyboardRelatedRequest.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public GetKeyboardMapping(Lcom/eltechs/axs/xconnectors/XResponse;IIS)V
    .locals 7
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x1
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x1
        .end annotation
    .end param
    .param p4    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "KEYBOARD_MODEL_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x65
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object p4, p0, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object p4

    .line 44
    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/KeyboardModel;->getLayoutsCount()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    mul-int v0, p3, v1

    .line 46
    new-array v0, v0, [I

    .line 48
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, p3, :cond_0

    add-int v6, p2, v4

    .line 51
    invoke-virtual {p4, v6, v2}, Lcom/eltechs/axs/xserver/KeyboardModel;->getKeysymsForKeycode(I[I)V

    .line 52
    array-length v6, v2

    invoke-static {v2, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-byte p2, v1

    const/4 p3, 0x0

    .line 56
    array-length p4, v0

    mul-int/lit8 p4, p4, 0x4

    new-instance v1, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest$1;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;[I)V

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public GetModifierMapping(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 4
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "KEYBOARD_MODEL_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x77
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 71
    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 72
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method

.method public QueryKeymap(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 3
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "INPUT_DEVICES"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x2c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 32
    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v2, v1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method
