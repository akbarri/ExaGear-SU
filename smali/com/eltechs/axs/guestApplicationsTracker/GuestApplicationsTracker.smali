.class public Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;
.super Ljava/lang/Object;
.source "GuestApplicationsTracker.java"


# instance fields
.field private final connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector<",
            "Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

.field private final killswitch:Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;

.field private final libubtPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-direct {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    .line 37
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnectionHandler;

    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnectionHandler;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V

    new-instance v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;

    iget-object v2, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-direct {v1, v2}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V

    invoke-static {p1, v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnSpecifiedUnixSocket(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    .line 42
    iget-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->start()V

    .line 44
    new-instance p1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;

    invoke-direct {p1, p2, p4, p3}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->killswitch:Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;

    .line 46
    iput-object p3, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->libubtPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V

    return-void
.end method

.method public freezeGuestApplications()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->freezeGuestApplications()V

    return-void
.end method

.method public getLibubtPath()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->libubtPath:Ljava/lang/String;

    return-object v0
.end method

.method public haveGuestApplications()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->haveGuestApplications()Z

    move-result v0

    return v0
.end method

.method public killGuestApplications()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->killGuestApplications()V

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V

    return-void
.end method

.method public resumeGuestApplications()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->resumeGuestApplications()V

    return-void
.end method

.method public startGuestApplication(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;Lcom/eltechs/axs/environmentService/AXSEnvironment;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->libubtPath:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/eltechs/axs/guestApplicationsTracker/UBT;->runUbt(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;Lcom/eltechs/axs/environmentService/AXSEnvironment;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->registerTranslator(I)Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    const/4 p1, 0x1

    return p1
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->freezeGuestApplications()V

    .line 52
    invoke-virtual {p0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->killGuestApplications()V

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->connector:Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->stop()V

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->killswitch:Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->stop()V

    return-void
.end method
