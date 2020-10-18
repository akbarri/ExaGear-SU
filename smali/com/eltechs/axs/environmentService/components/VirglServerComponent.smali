.class public Lcom/eltechs/axs/environmentService/components/VirglServerComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "VirglServerComponent.java"


# instance fields
.field private final socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

.field private t:Ljava/lang/Thread;

.field private final virglServer:Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->t:Ljava/lang/Thread;

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    .line 26
    new-instance p1, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;

    invoke-direct {p1}, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->virglServer:Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/environmentService/components/VirglServerComponent;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/environmentService/components/VirglServerComponent;)Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->virglServer:Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;

    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->getGuestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/environmentService/components/VirglServerComponent$1;-><init>(Lcom/eltechs/axs/environmentService/components/VirglServerComponent;)V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->t:Ljava/lang/Thread;

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->virglServer:Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;->stopServer()V

    return-void
.end method
