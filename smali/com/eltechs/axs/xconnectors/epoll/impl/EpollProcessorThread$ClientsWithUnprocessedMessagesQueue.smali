.class Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;
.super Ljava/lang/Object;
.source "EpollProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientsWithUnprocessedMessagesQueue"
.end annotation


# instance fields
.field final impl:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;


# direct methods
.method private constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->this$0:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->impl:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;-><init>(Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/eltechs/axs/xconnectors/epoll/impl/Client;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->impl:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->setQueuedForProcessingBufferedMessages(Z)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->impl:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->isQueuedForProcessingBufferedMessages()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->impl:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 464
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->setQueuedForProcessingBufferedMessages(Z)V

    :cond_0
    return-void
.end method

.method public remove(Lcom/eltechs/axs/xconnectors/epoll/impl/Client;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/Client<",
            "TContext;>;)V"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->impl:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$ClientsWithUnprocessedMessagesQueue;->impl:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
