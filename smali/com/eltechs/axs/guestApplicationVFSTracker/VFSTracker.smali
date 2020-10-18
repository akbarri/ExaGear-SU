.class public Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;
.super Ljava/lang/Object;
.source "VFSTracker.java"


# instance fields
.field private final connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnectionHandler;

    invoke-direct {v0}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnectionHandler;-><init>()V

    new-instance v1, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerRequestsDispatcher;

    invoke-direct {v1, p2}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerRequestsDispatcher;-><init>(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;)V

    invoke-static {p1, v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 28
    iget-object p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->start()V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->stop()V

    return-void
.end method
