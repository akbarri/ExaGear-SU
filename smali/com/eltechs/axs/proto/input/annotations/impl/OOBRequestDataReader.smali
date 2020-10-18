.class public Lcom/eltechs/axs/proto/input/annotations/impl/OOBRequestDataReader;
.super Ljava/lang/Object;
.source "OOBRequestDataReader.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;


# static fields
.field public static final INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/impl/OOBRequestDataReader;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/annotations/impl/OOBRequestDataReader;-><init>()V

    sput-object v0, Lcom/eltechs/axs/proto/input/annotations/impl/OOBRequestDataReader;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 44
    new-array p2, v1, [B

    iget-byte p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->oobParameter:B

    aput-byte p1, p2, v0

    return-object p2

    :cond_0
    const-string p1, "Attempted to read more than 1 byte of OOB request data."

    .line 46
    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public readByte(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 23
    iget-byte p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->oobParameter:B

    return p1
.end method

.method public readInt(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const-string p1, "Attempted to read more than 1 byte of OOB request data."

    const/4 v0, 0x0

    .line 36
    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public readShort(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const-string p1, "Attempted to read more than 1 byte of OOB request data."

    const/4 v0, 0x0

    .line 29
    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public skip(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const-string p1, "Attempted to read more than 1 byte of OOB request data."

    const/4 p2, 0x0

    .line 53
    invoke-static {p2, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method
