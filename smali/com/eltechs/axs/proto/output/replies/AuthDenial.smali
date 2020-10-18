.class public Lcom/eltechs/axs/proto/output/replies/AuthDenial;
.super Ljava/lang/Object;
.source "AuthDenial.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "zero",
        "messageLength",
        "majorProtocolVersion",
        "minorProtocolVersion",
        "dataLength",
        "reason"
    }
.end annotation


# instance fields
.field public final dataLength:S

.field public final majorProtocolVersion:S

.field public final messageLength:B

.field public final minorProtocolVersion:S

.field public final reason:Ljava/lang/String;

.field public final zero:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/AuthDenial;->zero:B

    const/16 v1, 0xb

    .line 18
    iput-short v1, p0, Lcom/eltechs/axs/proto/output/replies/AuthDenial;->majorProtocolVersion:S

    .line 19
    iput-short v0, p0, Lcom/eltechs/axs/proto/output/replies/AuthDenial;->minorProtocolVersion:S

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/AuthDenial;->messageLength:B

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/eltechs/axs/proto/output/replies/AuthDenial;->dataLength:S

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/replies/AuthDenial;->reason:Ljava/lang/String;

    return-void
.end method
