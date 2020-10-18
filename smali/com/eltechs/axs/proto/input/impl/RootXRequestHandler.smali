.class public Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;
.super Ljava/lang/Object;
.source "RootXRequestHandler.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/xconnectors/RequestHandler<",
        "Lcom/eltechs/axs/xserver/client/XClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE_OF_INT:I = 0x4

.field private static final X_REQUEST_PROLOGUE_LEN:I = 0x4


# instance fields
.field private final extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

.field private final handshakeHandler:Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;

.field private final target:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 43
    new-array v0, v0, [Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    .line 55
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->target:Lcom/eltechs/axs/xserver/XServer;

    .line 57
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->handshakeHandler:Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;

    .line 60
    new-instance p1, Lcom/eltechs/axs/proto/input/impl/BigReqExtensionHandler;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/impl/BigReqExtensionHandler;-><init>()V

    const/16 v0, 0x8f

    invoke-virtual {p0, v0, p1}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    return-void
.end method

.method private dispatchRequest(BBILcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    aget-object v2, v1, v0

    if-gez p3, :cond_1

    .line 155
    :try_start_0
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 160
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    :cond_2
    move-object v3, p4

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p5

    move-object v8, p6

    .line 163
    invoke-interface/range {v2 .. v8}, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;->handleRequest(Lcom/eltechs/axs/xserver/client/XClient;BBILcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    :try_end_0
    .catch Lcom/eltechs/axs/proto/input/XProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 167
    :goto_1
    invoke-virtual {p5}, Lcom/eltechs/axs/xconnectors/XRequest;->skipRequest()V

    .line 168
    invoke-virtual {p6, p1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendError(Lcom/eltechs/axs/proto/input/XProtocolError;)V

    :goto_2
    return-void
.end method

.method private handleNormalRequest(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 89
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 92
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getByte()B

    move-result v2

    .line 93
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getByte()B

    move-result v3

    .line 95
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(S)I

    move-result v0

    if-nez v0, :cond_2

    .line 100
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 102
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 105
    :cond_1
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    mul-int/2addr v0, v1

    sub-int v4, v0, v4

    .line 112
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    if-le v4, v0, :cond_3

    .line 114
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->generateSequenceNumber()I

    move-result v0

    .line 118
    new-instance v7, Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-direct {v7, v0, p2, v4}, Lcom/eltechs/axs/xconnectors/XRequest;-><init>(ILcom/eltechs/axs/xconnectors/XInputStream;I)V

    .line 119
    new-instance v6, Lcom/eltechs/axs/xconnectors/XResponse;

    invoke-direct {v6, v7, p3}, Lcom/eltechs/axs/xconnectors/XResponse;-><init>(Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    .line 121
    invoke-virtual {v7, v2}, Lcom/eltechs/axs/xconnectors/XRequest;->setMajorOpcode(B)V

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, p1

    move-object v5, v7

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->dispatchRequest(BBILcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V

    .line 124
    invoke-virtual {v7}, Lcom/eltechs/axs/xconnectors/XRequest;->getRemainingBytesCount()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    const-string p2, "Request has not been parsed fully."

    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 126
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1
.end method


# virtual methods
.method public getInstalledExtensionHandlers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    const/4 v2, 0x1

    array-length v1, v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 197
    iget-object v3, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public handleRequest(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->handleNormalRequest(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->handshakeHandler:Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;

    .line 70
    invoke-virtual {v0, p1, p2, p3}, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->handleAuthRequest(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    check-cast p1, Lcom/eltechs/axs/xserver/client/XClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->handleRequest(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1
.end method

.method public installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "A handler for the protocol extension %d is already installed."

    new-array v2, v2, [Ljava/lang/Object;

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->extensionHandlers:[Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    aput-object p2, v0, p1

    return-void
.end method
