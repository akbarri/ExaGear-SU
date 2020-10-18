.class public Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
.super Ljava/lang/Object;
.source "FairEpollConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Context:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private batchSize:I

.field private final bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

.field private final connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
            "TContext;>;"
        }
    .end annotation
.end field

.field private final connectionListenerFactory:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;

.field private transient processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

.field private final requestHandler:Lcom/eltechs/axs/xconnectors/RequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "TContext;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;",
            "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
            "TContext;>;",
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "TContext;>;",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->batchSize:I

    .line 33
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->connectionListenerFactory:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;

    .line 35
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;

    .line 36
    iput-object p3, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->requestHandler:Lcom/eltechs/axs/xconnectors/RequestHandler;

    .line 37
    iput-object p4, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    return-void
.end method

.method public static listenOnLoopbackInetAddress(ILcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Context:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
            "TContext;>;",
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "TContext;>;)",
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "TContext;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$3;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$3;-><init>(I)V

    .line 83
    new-instance p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 86
    invoke-static {}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->createDefaultConfiguration()Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;-><init>(Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;)V

    return-object p0
.end method

.method public static listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Context:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;",
            "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
            "TContext;>;",
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "TContext;>;)",
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "TContext;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$1;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$2;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V

    .line 65
    :goto_0
    new-instance p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 68
    invoke-static {}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->createDefaultConfiguration()Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;-><init>(Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;)V

    return-object p0
.end method


# virtual methods
.method public setBatchSize(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Batch size must a positive integer."

    .line 183
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 184
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->batchSize:I

    return-void
.end method

.method public setInitialInputBufferCapacity(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->setInitialInputBufferCapacity(I)V

    return-void
.end method

.method public setInitialOutputBufferCapacity(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->setInitialOutputBufferCapacity(I)V

    return-void
.end method

.method public setInputBufferSizeHardLimit(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->setInputBufferSizeHardLimit(I)V

    return-void
.end method

.method public setOutputBufferSizeHardLimit(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->setOutputBufferSizeHardLimit(I)V

    return-void
.end method

.method public setOutputBufferSizeLimit(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->setOutputBufferSizeLimit(I)V

    return-void
.end method

.method public start()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The connector is already running."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 95
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->connectionListenerFactory:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;

    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;->createConnectionListener()Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->connectionHandler:Lcom/eltechs/axs/proto/input/ConnectionHandler;

    iget-object v5, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->requestHandler:Lcom/eltechs/axs/xconnectors/RequestHandler;

    iget-object v6, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->bufferSizeConfiguration:Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    iget v7, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->batchSize:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;-><init>(Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;I)V

    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->startProcessing()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The connector is not yet running."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->stopProcessing()V

    .line 107
    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->processorThread:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    return-void
.end method
