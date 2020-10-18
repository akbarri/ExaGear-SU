.class public Lcom/eltechs/axs/xconnectors/XRequest;
.super Ljava/lang/Object;
.source "XRequest.java"


# instance fields
.field private final inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

.field private majorOpcode:B

.field private minorOpcode:S

.field private nBytesRemaining:I

.field private final sequenceNumber:I


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xconnectors/XInputStream;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/eltechs/axs/xconnectors/XRequest;->sequenceNumber:I

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    .line 24
    iput p3, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    return-void
.end method

.method private updateRemainingBytesCount(I)V
    .locals 1

    .line 101
    iget v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 102
    iget v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    return-void
.end method


# virtual methods
.method public getMajorOpcode()B
    .locals 1

    .line 76
    iget-byte v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->majorOpcode:B

    return v0
.end method

.method public getMinorOpcode()S
    .locals 1

    .line 86
    iget-short v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->minorOpcode:S

    return v0
.end method

.method public getRemainingBytesCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->sequenceNumber:I

    return v0
.end method

.method public read([B)V
    .locals 1

    .line 52
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XInputStream;->get([B)V

    return-void
.end method

.method public readAsByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAsByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public readByte()B
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->getByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    const/4 v0, 0x4

    .line 46
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v0

    return v0
.end method

.method public setMajorOpcode(B)V
    .locals 0

    .line 81
    iput-byte p1, p0, Lcom/eltechs/axs/xconnectors/XRequest;->majorOpcode:B

    return-void
.end method

.method public setMinorOpcode(S)V
    .locals 0

    .line 91
    iput-short p1, p0, Lcom/eltechs/axs/xconnectors/XRequest;->minorOpcode:S

    return-void
.end method

.method public skip(I)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XInputStream;->skip(I)V

    return-void
.end method

.method public skipRequest()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->inputStream:Lcom/eltechs/axs/xconnectors/XInputStream;

    iget v1, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xconnectors/XInputStream;->skip(I)V

    .line 71
    iget v0, p0, Lcom/eltechs/axs/xconnectors/XRequest;->nBytesRemaining:I

    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/XRequest;->updateRemainingBytesCount(I)V

    return-void
.end method
