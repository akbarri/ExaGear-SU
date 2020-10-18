.class public Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;
.super Ljava/lang/Object;
.source "HandshakeHandler.java"


# static fields
.field private static final LSB_MARKER:B = 0x6ct

.field private static final MINIMAL_AUTH_REQUEST_LENGTH:I = 0xc

.field private static final MSB_MARKER:B = 0x42t


# instance fields
.field private final target:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->target:Lcom/eltechs/axs/xserver/XServer;

    return-void
.end method

.method private denyAuthentication(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 152
    :try_start_0
    new-instance v2, Lcom/eltechs/axs/proto/output/replies/AuthDenial;

    invoke-direct {v2, p2}, Lcom/eltechs/axs/proto/output/replies/AuthDenial;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/eltechs/axs/proto/output/PODWriter;->write(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 155
    :cond_0
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 150
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 153
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method private sendServerInformation(Lcom/eltechs/axs/xconnectors/XOutputStream;Lcom/eltechs/axs/xserver/IdInterval;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->target:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 136
    :try_start_1
    new-instance v3, Lcom/eltechs/axs/proto/output/replies/ServerInfo;

    iget-object v4, p0, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->target:Lcom/eltechs/axs/xserver/XServer;

    invoke-direct {v3, v4, p2}, Lcom/eltechs/axs/proto/output/replies/ServerInfo;-><init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/IdInterval;)V

    invoke-static {p1, v3}, Lcom/eltechs/axs/proto/output/PODWriter;->write(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 137
    :try_start_2
    invoke-interface {v2}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_0
    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 137
    :try_start_4
    invoke-interface {v2}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_3
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, p1

    .line 132
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 138
    :try_start_7
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_5
    :goto_3
    throw p1
.end method


# virtual methods
.method public handleAuthRequest(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 67
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 70
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getByte()B

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    const-string p1, "Byte order marker is invalid."

    .line 83
    invoke-direct {p0, p3, p1}, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->denyAuthentication(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p2, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 76
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p3, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p2, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 80
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p3, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 86
    :goto_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getByte()B

    .line 88
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v0

    .line 89
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const-string p1, "Unsupported major X protocol version"

    .line 93
    invoke-direct {p0, p3, p1}, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->denyAuthentication(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    .line 96
    :cond_3
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->getIdInterval()Lcom/eltechs/axs/xserver/IdInterval;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p1, "Too many connections."

    .line 98
    invoke-direct {p0, p3, p1}, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->denyAuthentication(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    .line 101
    :cond_4
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v0

    .line 102
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v1

    .line 104
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    .line 106
    invoke-static {v0}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result v0

    invoke-static {v1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 110
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 113
    :cond_5
    new-array v0, v0, [B

    .line 114
    invoke-interface {p2, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->get([B)V

    .line 116
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->getIdInterval()Lcom/eltechs/axs/xserver/IdInterval;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/eltechs/axs/proto/input/impl/HandshakeHandler;->sendServerInformation(Lcom/eltechs/axs/xconnectors/XOutputStream;Lcom/eltechs/axs/xserver/IdInterval;)V

    const/4 p2, 0x1

    .line 117
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/client/XClient;->setAuthenticated(Z)V

    .line 119
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1
.end method
