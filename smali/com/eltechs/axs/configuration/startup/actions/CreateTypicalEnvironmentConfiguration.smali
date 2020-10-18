.class public Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "CreateTypicalEnvironmentConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/EnvironmentAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/ExagearImageAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final forceUseAbstractSockets:Z

.field private final productId:I

.field private final xServerConf:Lcom/eltechs/axs/configuration/XServerViewConfiguration;


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/configuration/XServerViewConfiguration;Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 41
    iput p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    .line 42
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->xServerConf:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    .line 43
    iput-boolean p3, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->forceUseAbstractSockets:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 34
    sget-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    invoke-direct {p0, p1, v0, p2}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;-><init>(ILcom/eltechs/axs/configuration/XServerViewConfiguration;Z)V

    return-void
.end method

.method private createALSASocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 6

    .line 92
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->forceUseAbstractSockets:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "%s%d"

    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/tmp/.sound/AS"

    aput-object v4, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s%d"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "/tmp/.sound/AS"

    aput-object v5, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createRegularSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private createDSoundServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 6

    .line 112
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->forceUseAbstractSockets:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "%s%d"

    .line 114
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/tmp/.sound/DS"

    aput-object v4, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s%d"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "/tmp/.sound/DS"

    aput-object v5, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createRegularSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private createGATServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".exagear-tracker-app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private createVirglServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 6

    .line 82
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->forceUseAbstractSockets:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "%s%d"

    .line 84
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/tmp/.virgl"

    aput-object v4, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s%d"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "/tmp/.virgl"

    aput-object v5, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createRegularSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private createXServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 6

    .line 102
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->forceUseAbstractSockets:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "%s%d"

    .line 104
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "/tmp/.X11-unix/X"

    aput-object v4, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s%d"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "/tmp/.X11-unix/X"

    aput-object v5, v3, v2

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createRegularSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 49
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/eltechs/axs/environmentService/AXSEnvironment;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/eltechs/axs/environmentService/AXSEnvironment;-><init>(Landroid/content/Context;)V

    .line 54
    iget v3, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    .line 56
    new-instance v4, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;

    iget v5, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->productId:I

    invoke-static {v5}, Lcom/eltechs/axs/productsRegistry/ProductIDs;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 58
    new-instance v4, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->createXServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v5

    invoke-direct {v4, v1, v3, v5}, Lcom/eltechs/axs/environmentService/components/XServerComponent;-><init>(Lcom/eltechs/axs/xserver/ScreenInfo;ILcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V

    invoke-virtual {v2, v4}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 61
    new-instance v1, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;

    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->createALSASocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 62
    new-instance v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->createDSoundServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 64
    new-instance v1, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->createGATServerSocketConf()Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;)V

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v1

    .line 69
    new-instance v3, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;

    invoke-direct {v3, v1}, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;-><init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 70
    new-instance v3, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;

    invoke-direct {v3, v1}, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;-><init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    .line 73
    invoke-interface {v0, v2}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->setEnvironment(Lcom/eltechs/axs/environmentService/AXSEnvironment;)V

    .line 75
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->xServerConf:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->setXServerViewConfiguration(Lcom/eltechs/axs/configuration/XServerViewConfiguration;)V

    .line 77
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;->sendDone()V

    return-void
.end method
