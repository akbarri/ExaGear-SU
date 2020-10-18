.class public Lcom/eltechs/axs/proto/input/impl/BigReqExtensionHandler;
.super Ljava/lang/Object;
.source "BigReqExtensionHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;


# static fields
.field private static final REQUEST_SIZE_LIMIT_HINT:I = 0xfffffc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssignedMajorOpcode()B
    .locals 1

    const/16 v0, -0x71

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

    const-string v0, "BIG-REQUESTS"

    return-object v0
.end method

.method public handleRequest(Lcom/eltechs/axs/xserver/client/XClient;BBILcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {p3}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p5, p1}, Lcom/eltechs/axs/xconnectors/XRequest;->setMinorOpcode(S)V

    if-eqz p3, :cond_0

    .line 61
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    :cond_0
    const/4 p1, 0x2

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    const p2, 0x3fffff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    aput-object p4, p1, p2

    invoke-virtual {p6, p3, p1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method
