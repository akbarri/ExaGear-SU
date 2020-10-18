.class public Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "ExtensionInquiries.java"


# instance fields
.field private final rootXRequestsDispatcher:Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    .line 40
    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;->rootXRequestsDispatcher:Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;

    return-void
.end method

.method private findExtensionByName(Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;->rootXRequestsDispatcher:Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;

    invoke-virtual {v0}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->getInstalledExtensionHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    .line 78
    invoke-interface {v1}, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public ListExtensions(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 4
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x63
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;->rootXRequestsDispatcher:Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;

    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->getInstalledExtensionHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    .line 93
    invoke-interface {v2}, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    new-instance v1, Lcom/eltechs/axs/proto/output/replies/ExtensionsList;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/proto/output/replies/ExtensionsList;-><init>(Ljava/util/List;)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method

.method public QueryExtension(Lcom/eltechs/axs/xconnectors/XResponse;SSLjava/lang/String;)V
    .locals 0
    .param p2    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "nameLength"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamLength;
            value = "nameLength"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x62
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p4}, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;->findExtensionByName(Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    move-result-object p2

    .line 51
    new-instance p3, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;

    invoke-direct {p3, p0, p2}, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
