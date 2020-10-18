.class public Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;
.super Ljava/lang/Thread;
.source "EpollProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;,
        Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Context:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field private final batchSize:I

.field private final bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

.field private final clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread<",
            "TContext;>.ClientsWithUnprocessedMessagesQueue;"
        }
    .end annotation
.end field

.field private final connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
            "TContext;>;"
        }
    .end annotation
.end field

.field private final connectionListener:Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

.field private final epollFd:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private final fdToClientMap:J
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private final requestHandler:Lcom/eltechs/axs/xconnectors/RequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "TContext;>;"
        }
    .end annotation
.end field

.field private final shutdownRequestFd:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private threadState:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "xconnector-fairepoll"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of EpollProcessorThread do not match one another."

    .line 44
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;",
            "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
            "TContext;>;",
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "TContext;>;",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;-><init>(Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;)V

    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    .line 166
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->NOT_STARTED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->threadState:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    .line 97
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->connectionListener:Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    .line 99
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;

    .line 100
    iput-object p3, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->requestHandler:Lcom/eltechs/axs/xconnectors/RequestHandler;

    .line 101
    iput-object p4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    .line 102
    iput p5, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->batchSize:I

    .line 104
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->createEpollFd()I

    move-result p2

    iput p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->epollFd:I

    .line 105
    iget p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->epollFd:I

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-gez p2, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->close()V

    .line 108
    new-instance p1, Ljava/io/IOException;

    const-string p2, "epoll() has failed; errno = %d"

    new-array p3, p3, [Ljava/lang/Object;

    iget p5, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->epollFd:I

    neg-int p5, p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->createShutdownRequestFd()I

    move-result p2

    iput p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->shutdownRequestFd:I

    .line 112
    iget p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->shutdownRequestFd:I

    if-gez p2, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->close()V

    .line 115
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeEpollFd()V

    .line 116
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create the shutdown request notifier; errno = %d"

    new-array p3, p3, [Ljava/lang/Object;

    iget p5, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->shutdownRequestFd:I

    neg-int p5, p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->createFdToClientMap()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->fdToClientMap:J

    .line 120
    iget-wide v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->fdToClientMap:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->close()V

    .line 123
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeEpollFd()V

    .line 124
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeShutdownRequestFd()V

    .line 125
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to allocate the list of connected clients."

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->getFd()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->addServerSocketToEpoll(I)I

    move-result p2

    if-gez p2, :cond_3

    .line 133
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->close()V

    .line 134
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeEpollFd()V

    .line 135
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeShutdownRequestFd()V

    .line 136
    new-instance p1, Ljava/io/IOException;

    const-string p5, "Failed to start polling for incoming connections; errno = %d"

    new-array p3, p3, [Ljava/lang/Object;

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_3
    iget p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->shutdownRequestFd:I

    invoke-direct {p0, p2}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->addShutdownRequestFdToEpoll(I)I

    move-result p2

    if-gez p2, :cond_4

    .line 142
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->close()V

    .line 143
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeEpollFd()V

    .line 144
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeShutdownRequestFd()V

    .line 145
    new-instance p1, Ljava/io/IOException;

    const-string p5, "Failed to start polling for shutdown requests; errno = %d"

    new-array p3, p3, [Ljava/lang/Object;

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method private native addServerSocketToEpoll(I)I
.end method

.method private native addShutdownRequestFdToEpoll(I)I
.end method

.method private native closeEpollFd()V
.end method

.method private native closeShutdownRequestFd()V
.end method

.method private native createEpollFd()I
.end method

.method private native createFdToClientMap()J
.end method

.method private native createShutdownRequestFd()I
.end method

.method private native destroyFdToClientMapAndKillConnections()V
.end method

.method private native doEpoll(I)I
.end method

.method private epollCheckStateNow()I
    .locals 1

    const/4 v0, 0x0

    .line 585
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->doEpoll(I)I

    move-result v0

    return v0
.end method

.method private epollIndefinitely()I
    .locals 1

    const/4 v0, -0x1

    .line 573
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->doEpoll(I)I

    move-result v0

    return v0
.end method

.method private static native initialiseNativeParts()Z
.end method

.method private killConnection(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 2
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->getContext()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/proto/input/ConnectionHandler;->handleConnectionShutdown(Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->removeFromPoll(I)I

    .line 412
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->closeConnection()V

    .line 413
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->remove(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    return-void
.end method

.method private native pollForRead(ILcom/eltechs/axs/xconnectors/epoll/impl/Client;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)I"
        }
    .end annotation
.end method

.method private native pollForWrite(ILcom/eltechs/axs/xconnectors/epoll/impl/Client;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;Z)I"
        }
    .end annotation
.end method

.method private processAvailableMessages()Z
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v2}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->get()Lcom/eltechs/axs/xconnectors/epoll/impl/Client;

    move-result-object v2

    .line 251
    invoke-direct {p0, v2}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->processReceivedClientMessages(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private processClientMessage(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 1
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    .line 300
    :try_start_0
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->getInputStream()Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->readMoreData()I

    move-result v0

    if-gez v0, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->processHangup(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 309
    :catch_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->killConnection(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->processReceivedClientMessages(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    return-void
.end method

.method private processHangup(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->isQueuedForProcessingBufferedMessages()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->killConnection(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    :cond_0
    return-void
.end method

.method private processNewConnection()V
    .locals 6
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->connectionListener:Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->accept()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v1, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;-><init>(I)V

    .line 272
    new-instance v2, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;

    iget-object v3, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v3}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->getInitialInputBufferCapacity()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;-><init>(Lcom/eltechs/axs/xconnectors/impl/SocketReader;I)V

    .line 273
    new-instance v3, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v4}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->getInitialOutputBufferCapacity()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;-><init>(Lcom/eltechs/axs/xconnectors/impl/SocketWriter;I)V

    .line 275
    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v4}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->getInputBufferSizeHardLimit()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->setBufferSizeHardLimit(I)V

    .line 276
    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v4}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->getOutputBufferSizeLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->setBufferSizeSoftLimit(I)V

    .line 277
    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v4}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->getOutputBufferSizeHardLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->setBufferSizeHardLimit(I)V

    .line 279
    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;

    invoke-interface {v4, v2, v3}, Lcom/eltechs/axs/proto/input/ConnectionHandler;->handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;

    move-result-object v4

    .line 280
    new-instance v5, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;

    invoke-direct {v5, v4, v1, v2, v3}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;-><init>(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)V

    .line 282
    invoke-direct {p0, v0, v5}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->pollForRead(ILcom/eltechs/axs/xconnectors/epoll/impl/Client;)I

    move-result v0

    if-gez v0, :cond_1

    .line 286
    invoke-virtual {v5}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->closeConnection()V

    :cond_1
    return-void
.end method

.method private processReceivedClientMessages(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    .line 337
    :try_start_0
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->getInputStream()Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->getOutputStream()Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    move-result-object v1

    const/4 v2, 0x0

    .line 344
    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->prepareForReading()V

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    move v5, v2

    move v6, v5

    .line 346
    :goto_0
    iget v7, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->batchSize:I

    if-ge v2, v7, :cond_2

    .line 348
    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->requestHandler:Lcom/eltechs/axs/xconnectors/RequestHandler;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7, v0, v1}, Lcom/eltechs/axs/xconnectors/RequestHandler;->handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object v4

    .line 349
    sget-object v7, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    if-eq v4, v7, :cond_0

    goto :goto_2

    .line 353
    :cond_0
    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->getActiveRegionPosition()I

    move-result v5

    .line 354
    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->getAvailableBytesCount()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_2
    :goto_2
    sget-object v2, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;->$SwitchMap$com$eltechs$axs$proto$input$ProcessingResult:[I

    invoke-virtual {v4}, Lcom/eltechs/axs/proto/input/ProcessingResult;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    const-string v0, "Request handler returned an unhandled processing result."

    goto :goto_3

    .line 365
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;->doneWithReading(I)V

    goto :goto_4

    .line 360
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->killConnection(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    return-void

    .line 369
    :goto_3
    invoke-static {v3, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 372
    :goto_4
    invoke-virtual {v1}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Non-blocking writes are not implemented yet."

    .line 374
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_4

    .line 379
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->put(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 383
    :catch_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->killConnection(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V

    :cond_4
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native removeFromPoll(I)I
.end method

.method private native requestShutdown()V
.end method

.method private runOnce()Z
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->isEmpty()Z

    move-result v0

    const-string v1, "Client messages have not been fully processed by a previous invocation of runOnce()."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->epollIndefinitely()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->clientsWithUnprocessedMessages:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->processAvailableMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->epollCheckStateNow()I

    move-result v0

    if-gez v0, :cond_0

    return v1

    :cond_2
    return v2
.end method

.method private shutdown()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->connectionListener:Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->close()V

    .line 445
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->destroyFdToClientMapAndKillConnections()V

    .line 447
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeEpollFd()V

    .line 448
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->closeShutdownRequestFd()V

    return-void
.end method

.method private writeBufferedResponse(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 0
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    const-string p1, "No client is passed to pollForWrite() yet."

    .line 397
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->unreachable(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->runOnce()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->shutdown()V

    return-void
.end method

.method public declared-synchronized startProcessing()V
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->threadState:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    sget-object v1, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->NOT_STARTED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Processing thread already started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 177
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->RUNNING:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->threadState:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    .line 178
    invoke-virtual {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 174
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopProcessing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->threadState:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    sget-object v1, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->RUNNING:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Processing thread is not running."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 191
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->DESTROYED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->threadState:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    .line 192
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->requestShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 188
    monitor-exit p0

    throw v0
.end method
