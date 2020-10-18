.class public Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;
.super Ljava/lang/Object;
.source "XOutputStreamImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XOutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;
    }
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferSizeHardLimit:I

.field private bufferSizeLimit:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final socketWriter:Lcom/eltechs/axs/xconnectors/impl/SocketWriter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/impl/SocketWriter;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 33
    iput v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->bufferSizeLimit:I

    const/high16 v0, 0x200000

    .line 35
    iput v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->bufferSizeHardLimit:I

    .line 39
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->socketWriter:Lcom/eltechs/axs/xconnectors/impl/SocketWriter;

    .line 40
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    .line 42
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private drainBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 210
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->socketWriter:Lcom/eltechs/axs/xconnectors/impl/SocketWriter;

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xconnectors/impl/SocketWriter;->write(Ljava/nio/ByteBuffer;)I

    .line 211
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private ensureSpaceIsAvailable(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 179
    iget v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->bufferSizeLimit:I

    if-le v0, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->drainBuffer()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v1, p1, :cond_1

    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 192
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 195
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->drainBuffer()V

    return-void
.end method

.method public hasBufferedData()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public lock()Lcom/eltechs/axs/xconnectors/XStreamLock;
    .locals 1

    .line 164
    new-instance v0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;-><init>(Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)V

    return-object v0
.end method

.method public setBufferSizeHardLimit(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->bufferSizeHardLimit:I

    return-void
.end method

.method public setBufferSizeSoftLimit(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Buffer capacity must be positive."

    .line 55
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->bufferSizeLimit:I

    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Byte order of XOutputStream may not be changed when it contains unsent data."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write(ILcom/eltechs/axs/xconnectors/BufferFiller;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    const-string v1, "XOutputStream must be locked when used."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->ensureSpaceIsAvailable(I)V

    .line 145
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 148
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 151
    invoke-interface {p2, v0}, Lcom/eltechs/axs/xconnectors/BufferFiller;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    const-string v1, "XOutputStream must be locked when used."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 132
    invoke-direct {p0, p3}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->ensureSpaceIsAvailable(I)V

    .line 133
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    const-string v1, "XOutputStream must be locked when used."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->ensureSpaceIsAvailable(I)V

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    const-string v1, "XOutputStream must be locked when used."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v0, 0x4

    .line 104
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->ensureSpaceIsAvailable(I)V

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeShort(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    const-string v1, "XOutputStream must be locked when used."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v0, 0x2

    .line 95
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->ensureSpaceIsAvailable(I)V

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeString8(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    const-string v1, "XOutputStream must be locked when used."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const-string v0, "latin1"

    .line 113
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result p1

    new-array p1, p1, [B

    .line 116
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->ensureSpaceIsAvailable(I)V

    .line 117
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
