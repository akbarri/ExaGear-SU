.class public Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;
.super Ljava/lang/Object;
.source "CoreXProtocolDispatcher.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;


# instance fields
.field private final handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;->handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    return-void
.end method


# virtual methods
.method public getAssignedMajorOpcode()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstAssignedErrorId()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstAssignedEventId()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CORE"

    return-object v0
.end method

.method public handleRequest(Lcom/eltechs/axs/xserver/client/XClient;BBILcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;->handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->getHandler(I)Lcom/eltechs/axs/proto/input/OpcodeHandler;

    move-result-object v1

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p5, p2}, Lcom/eltechs/axs/xconnectors/XRequest;->setMinorOpcode(S)V

    if-nez v1, :cond_0

    .line 59
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    :cond_0
    move-object v2, p1

    move v3, p4

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 62
    invoke-interface/range {v1 .. v6}, Lcom/eltechs/axs/proto/input/OpcodeHandler;->handleRequest(Lcom/eltechs/axs/xserver/client/XClient;IBLcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V

    return-void
.end method

.method public installRequestHandler(ILcom/eltechs/axs/proto/input/OpcodeHandler;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;->handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->installRequestHandler(ILcom/eltechs/axs/proto/input/OpcodeHandler;)V

    return-void
.end method
