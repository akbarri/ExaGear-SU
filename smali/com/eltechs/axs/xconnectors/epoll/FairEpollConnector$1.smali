.class final Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$1;
.super Ljava/lang/Object;
.source "FairEpollConnector.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$1;->val$conf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnectionListener()Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$1;->val$conf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->getGuestPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->forAbstractAfUnixAddress(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    move-result-object v0

    return-object v0
.end method
