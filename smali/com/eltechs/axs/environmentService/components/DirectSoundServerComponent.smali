.class public Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "DirectSoundServerComponent.java"


# instance fields
.field private connectionHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

.field private connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "Lcom/eltechs/axs/dsoundServer/DirectSoundClient;",
            ">;"
        }
    .end annotation
.end field

.field private directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;

.field private requestHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

.field private final socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->getGuestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resumePlayback()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DirectSound server component not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connectionHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

    new-instance v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent$2;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent$2;-><init>(Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->forEachClient(Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler$ClientCallback;)V

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->requestHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

    invoke-virtual {v0}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->resumeRequestProcessing()V

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "DirectSound server component already started."

    invoke-static {v0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    const-class v3, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;

    invoke-virtual {v0, v3}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->getShmEngine()Lcom/eltechs/axs/sysvipc/SHMEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    const-string v2, "DirectSoundServerComponent requires SysVIPCEmulatorComponent."

    .line 42
    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 44
    new-instance v1, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;

    invoke-direct {v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;-><init>()V

    iput-object v1, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;

    .line 46
    new-instance v1, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

    iget-object v2, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;

    invoke-direct {v1, v0, v2}, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;-><init>(Lcom/eltechs/axs/sysvipc/SHMEngine;Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;)V

    iput-object v1, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connectionHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

    .line 47
    new-instance v0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

    invoke-direct {v0}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->requestHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connectionHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

    iget-object v2, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->requestHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

    invoke-static {v0, v1, v2}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DirectSound server component not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->resumePlayback()V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 66
    :try_start_1
    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;

    invoke-virtual {v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :catch_1
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;

    .line 69
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connectionHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

    .line 70
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->requestHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

    return-void
.end method

.method public suspendPlayback()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DirectSound server component not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->requestHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;

    invoke-virtual {v0}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendRequestProcessing()V

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->connectionHandler:Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;

    new-instance v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent$1;-><init>(Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->forEachClient(Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler$ClientCallback;)V

    return-void
.end method
