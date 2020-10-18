.class public Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;
.super Ljava/lang/Object;
.source "SocketWrapper.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/impl/SocketReader;
.implements Lcom/eltechs/axs/xconnectors/impl/SocketWriter;


# instance fields
.field private final fd:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "xconnector-fairepoll"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of EpollProcessorThread do not match one another."

    .line 24
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->fd:I

    return-void
.end method

.method private native closeImpl()V
.end method

.method private static native initialiseNativeParts()Z
.end method

.method private native readImpl(Ljava/nio/ByteBuffer;II)I
.end method

.method private native writeImpl(Ljava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->closeImpl()V

    return-void
.end method

.method public getFd()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->fd:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->readImpl(Ljava/nio/ByteBuffer;II)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v1

    :cond_0
    if-gez v1, :cond_1

    .line 54
    new-instance p1, Ljava/io/IOException;

    const-string v0, "recvmsg() has failed; errno = %d\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->writeImpl(Ljava/nio/ByteBuffer;II)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    .line 68
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-gez v1, :cond_1

    .line 73
    new-instance p1, Ljava/io/IOException;

    const-string v0, "sendmsg() has failed; errno = %d\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v1
.end method
