.class public Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;
.super Ljava/lang/Object;
.source "XInputStreamImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XInputStream;


# instance fields
.field private activeRegion:Ljava/nio/ByteBuffer;

.field private bufferSizeHardLimit:I

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private final socketReader:Lcom/eltechs/axs/xconnectors/impl/SocketReader;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/impl/SocketReader;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x200000

    .line 28
    iput v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->bufferSizeHardLimit:I

    .line 32
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->socketReader:Lcom/eltechs/axs/xconnectors/impl/SocketReader;

    .line 33
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private growInputBufferIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t resize an input buffer while processing messages contained in it."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->bufferSizeHardLimit:I

    if-le v0, v1, :cond_1

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input buffer size has exceeded the hard limit."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    .line 70
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 74
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 76
    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method


# virtual methods
.method public doneWithReading(I)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "doneWithReading() called when no reading operation is in progress."

    invoke-static {v0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "NioProcessorThread claims to have processed more data than is available."

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    .line 116
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :cond_2
    if-lez p1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 129
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method

.method public get([B)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getActiveRegionPosition()I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "getActiveRegionPosition() called when no reading operation is in progress."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public getAsByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 175
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 177
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    add-int/2addr v1, p1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public getAvailableBytesCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getByte()B
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getShort()S
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public prepareForReading()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "prepareForReading() called when a reading operation is in progress."

    invoke-static {v0, v2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 99
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    .line 103
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public readMoreData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->growInputBufferIfNecessary()V

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->socketReader:Lcom/eltechs/axs/xconnectors/impl/SocketReader;

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xconnectors/impl/SocketReader;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public setBufferSizeHardLimit(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->bufferSizeHardLimit:I

    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public skip(I)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->activeRegion:Ljava/nio/ByteBuffer;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
