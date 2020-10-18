.class public Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "ALSAServerComponent.java"


# instance fields
.field private connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "Lcom/eltechs/axs/alsaServer/ALSAClient;",
            ">;"
        }
    .end annotation
.end field

.field private final socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->getGuestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ALSA server component already started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 38
    new-instance v0, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

    new-instance v1, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayersFactory;

    invoke-direct {v1}, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayersFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;-><init>(Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;)V

    .line 39
    new-instance v1, Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;-><init>(Lcom/eltechs/axs/alsaServer/PCMPlayersManager;)V

    .line 40
    new-instance v0, Lcom/eltechs/axs/alsaServer/ALSARequestHandler;

    invoke-direct {v0}, Lcom/eltechs/axs/alsaServer/ALSARequestHandler;-><init>()V

    .line 42
    iget-object v2, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-static {v2, v1, v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ALSA server component not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    return-void
.end method
