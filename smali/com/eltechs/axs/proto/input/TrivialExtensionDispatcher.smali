.class public abstract Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;
.super Ljava/lang/Object;
.source "TrivialExtensionDispatcher.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;


# instance fields
.field private final firstAssignedErrorId:B

.field private final firstAssignedEventId:B

.field private final handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

.field private final majorOpcode:B

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(BLjava/lang/String;BB)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    .line 42
    iput-byte p1, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->majorOpcode:B

    .line 43
    iput-object p2, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->name:Ljava/lang/String;

    .line 44
    iput-byte p3, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->firstAssignedEventId:B

    .line 45
    iput-byte p4, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->firstAssignedErrorId:B

    return-void
.end method


# virtual methods
.method public final getAssignedMajorOpcode()B
    .locals 1

    .line 51
    iget-byte v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->majorOpcode:B

    return v0
.end method

.method public final getFirstAssignedErrorId()B
    .locals 1

    .line 69
    iget-byte v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->firstAssignedErrorId:B

    return v0
.end method

.method public final getFirstAssignedEventId()B
    .locals 1

    .line 63
    iget-byte v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->firstAssignedEventId:B

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final handleRequest(Lcom/eltechs/axs/xserver/client/XClient;BBILcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p3}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result p2

    int-to-short p2, p2

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->getHandler(I)Lcom/eltechs/axs/proto/input/OpcodeHandler;

    move-result-object v1

    .line 82
    invoke-virtual {p5, p2}, Lcom/eltechs/axs/xconnectors/XRequest;->setMinorOpcode(S)V

    if-nez v1, :cond_0

    .line 86
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    :cond_0
    move-object v2, p1

    move v3, p4

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 89
    invoke-interface/range {v1 .. v6}, Lcom/eltechs/axs/proto/input/OpcodeHandler;->handleRequest(Lcom/eltechs/axs/xserver/client/XClient;IBLcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V

    return-void
.end method

.method public final installRequestHandler(ILcom/eltechs/axs/proto/input/OpcodeHandler;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;->handlersRegistry:Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->installRequestHandler(ILcom/eltechs/axs/proto/input/OpcodeHandler;)V

    return-void
.end method
