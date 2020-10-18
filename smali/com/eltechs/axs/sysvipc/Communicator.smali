.class public Lcom/eltechs/axs/sysvipc/Communicator;
.super Ljava/lang/Object;
.source "Communicator.java"


# static fields
.field private static final MAGIC:I = 0x56535953

.field private static final SIZE_OF_INT16:I = 0x2

.field private static final SIZE_OF_INT32:I = 0x4

.field private static final SIZE_OF_INT64:I = 0x8


# instance fields
.field private final emulatorConnection:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, p1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    return-void
.end method

.method public communicate(Lcom/eltechs/axs/sysvipc/RequestCodes;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/eltechs/axs/sysvipc/Communicator;->communicate(Lcom/eltechs/axs/sysvipc/RequestCodes;[B[B[Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public communicate(Lcom/eltechs/axs/sysvipc/RequestCodes;[B[B[Ljava/io/FileDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 57
    array-length v2, p4

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    const v0, 0x56535953

    const/16 v2, 0x8

    .line 77
    array-length v3, p2

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 78
    array-length v4, p3

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 80
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 81
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 84
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 87
    array-length v6, v3

    int-to-short v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p1}, Lcom/eltechs/axs/sysvipc/RequestCodes;->getCode()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 91
    iget-object p1, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    monitor-enter p1

    .line 93
    :try_start_0
    iget-object p2, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 94
    iget-object p2, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    .line 95
    array-length v3, v2

    if-eq p2, v3, :cond_2

    .line 97
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Response of the Sys V IPC emulation server is too short."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 100
    :cond_2
    iget-object p2, p0, Lcom/eltechs/axs/sysvipc/Communicator;->emulatorConnection:Landroid/net/LocalSocket;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object p2

    .line 102
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v0, v3, :cond_6

    array-length v0, v2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    if-nez p2, :cond_4

    if-eqz p4, :cond_4

    .line 110
    new-instance p2, Ljava/io/IOException;

    const-string p3, "The Sys V IPC emulation server has responded with no file descriptors when one is expected."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 113
    :cond_4
    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_5

    .line 117
    aget-object p2, p2, v1

    aput-object p2, p4, v1

    .line 119
    :cond_5
    monitor-exit p1

    return-void

    .line 104
    :cond_6
    :goto_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "The Sys V IPC emulation server has sent a malformed response."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 119
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
