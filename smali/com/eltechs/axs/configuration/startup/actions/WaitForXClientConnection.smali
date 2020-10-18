.class public Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "WaitForXClientConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/EnvironmentAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private guestApplicationTerminationListener:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

.field private final hideXServerImage:Z

.field private final progressFileName:Ljava/lang/String;

.field private putImageListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

.field private receivedEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->progressFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->hideXServerImage:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->progressFileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->hideXServerImage:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->progressFileName:Ljava/lang/String;

    .line 38
    iput-boolean p2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->hideXServerImage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->startedDrawing()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->guestApplicationsTerminated()V

    return-void
.end method

.method private declared-synchronized guestApplicationsTerminated()V
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->receivedEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 146
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    :try_start_1
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->receivedEvent:Z

    const-string v0, "Guest applications died before showing anything."

    .line 150
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->sendError(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->removeListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 143
    monitor-exit p0

    throw v0
.end method

.method private removeListeners()V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    .line 159
    const-class v1, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    .line 160
    const-class v2, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    .line 162
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v2

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v2

    .line 166
    :try_start_0
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->putImageListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    invoke-interface {v1, v3}, Lcom/eltechs/axs/xserver/WindowsManager;->removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    .line 167
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->guestApplicationTerminationListener:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->putImageListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    .line 174
    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->guestApplicationTerminationListener:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

    return-void

    :catchall_0
    move-exception v0

    .line 170
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    throw v0
.end method

.method private declared-synchronized startedDrawing()V
    .locals 3

    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->receivedEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->isXServerFirstConnectDone()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/AppConfig;->setXServerFirstConnectDone(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eltechs/axs/firebase/FAHelper;->logXServerFirstConnectEvent(Landroid/content/Context;)V

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getGuestLaunchesCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setGuestLaunchesCount(I)V

    .line 135
    iput-boolean v2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->receivedEvent:Z

    .line 136
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    const-class v1, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->freezeGuestApplications()V

    .line 137
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->sendDone()V

    .line 139
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->removeListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    .line 64
    const-class v1, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    .line 65
    const-class v2, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    .line 67
    new-instance v2, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$1;

    invoke-direct {v2, p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;)V

    iput-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->putImageListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    .line 80
    new-instance v2, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;

    invoke-direct {v2, p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;-><init>(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;)V

    iput-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->guestApplicationTerminationListener:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

    .line 91
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v2

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v2

    .line 96
    :try_start_0
    iget-boolean v3, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->hideXServerImage:Z

    if-nez v3, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->putImageListener:Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    invoke-interface {v1, v3}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->guestApplicationTerminationListener:Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    .line 111
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->haveGuestApplications()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->guestApplicationsTerminated()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 103
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    throw v0
.end method

.method public getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
    .locals 3

    .line 56
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    const-string v1, ""

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->progressFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
