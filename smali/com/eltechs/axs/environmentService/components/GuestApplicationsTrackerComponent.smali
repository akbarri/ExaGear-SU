.class public Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "GuestApplicationsTrackerComponent.java"


# instance fields
.field private final socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

.field private tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V

    return-void
.end method

.method public freezeGuestApplications()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->freezeGuestApplications()V

    return-void
.end method

.method public getSocket()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->getGuestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveGuestApplications()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->haveGuestApplications()Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V

    return-void
.end method

.method public resumeGuestApplications()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->resumeGuestApplications()V

    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is already started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getNativeLibsConfiguration()Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/MemsplitConfigurationAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/MemsplitConfigurationAware;->getMemsplitConfiguration()Lcom/eltechs/axs/configuration/MemsplitConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->isMemsplit3g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getLibubtPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getLibubt2GPath()Ljava/lang/String;

    move-result-object v1

    .line 46
    :goto_1
    new-instance v2, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    iget-object v3, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->socketConf:Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    .line 47
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getElfLoaderPath()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getKillswitchPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    return-void
.end method

.method public startGuestApplication(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->startGuestApplication(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;Lcom/eltechs/axs/environmentService/AXSEnvironment;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Guest applications tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->killGuestApplications()V

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsTracker;

    return-void
.end method
