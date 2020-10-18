.class public Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;
.super Ljava/lang/Object;
.source "NormalRequestDataReader.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;


# static fields
.field public static final INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;-><init>()V

    sput-object v0, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateRemainingBytesCount(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 59
    iget v0, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->remainingBytesCount:I

    if-ge v0, p2, :cond_0

    .line 61
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    .line 64
    :cond_0
    iget v0, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->remainingBytesCount:I

    sub-int/2addr v0, p2

    iput v0, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->remainingBytesCount:I

    return-void
.end method


# virtual methods
.method public read(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->updateRemainingBytesCount(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 44
    new-array p2, p2, [B

    .line 45
    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xconnectors/XRequest;->read([B)V

    return-object p2
.end method

.method public readByte(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->updateRemainingBytesCount(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 22
    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/XRequest;->readByte()B

    move-result p1

    return p1
.end method

.method public readInt(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 v0, 0x4

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->updateRemainingBytesCount(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 36
    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/XRequest;->readInt()I

    move-result p1

    return p1
.end method

.method public readShort(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 v0, 0x2

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->updateRemainingBytesCount(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 29
    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/XRequest;->readShort()S

    move-result p1

    return p1
.end method

.method public skip(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->updateRemainingBytesCount(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 54
    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xconnectors/XRequest;->skip(I)V

    return-void
.end method
