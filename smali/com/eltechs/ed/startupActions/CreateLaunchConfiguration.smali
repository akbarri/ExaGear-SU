.class public Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "CreateLaunchConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/ed/EDApplicationState;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field final applicationWorkingDir:Ljava/io/File;

.field private final argv:[Ljava/lang/String;

.field private final envp:[Ljava/lang/String;

.field private final socketPathSuffix:Ljava/lang/String;

.field private final userAreaDir:Ljava/lang/String;

.field private final winePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->applicationWorkingDir:Ljava/io/File;

    .line 42
    iput-object p2, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->winePrefix:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->argv:[Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->envp:[Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->socketPathSuffix:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->userAreaDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 52
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/EDApplicationState;

    .line 53
    invoke-interface {v0}, Lcom/eltechs/ed/EDApplicationState;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;

    invoke-direct {v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;-><init>()V

    .line 56
    invoke-interface {v0}, Lcom/eltechs/ed/EDApplicationState;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setFsRoot(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->applicationWorkingDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestExecutablePath(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->argv:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestExecutable(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->argv:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestArguments([Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->envp:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestEnvironmentVariables([Ljava/lang/String;)V

    const-string v3, "LC_ALL"

    .line 63
    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getLocaleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v0}, Lcom/eltechs/ed/EDApplicationState;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->addArgumentsToEnvironment(Lcom/eltechs/axs/environmentService/AXSEnvironment;)V

    const-string v1, "../drive_c"

    .line 67
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/ed/EDApplicationState;

    invoke-interface {v4}, Lcom/eltechs/ed/EDApplicationState;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->winePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/dosdevices/c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->userAreaDir:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/ed/EDApplicationState;

    invoke-interface {v4}, Lcom/eltechs/ed/EDApplicationState;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->winePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/dosdevices/d:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/tmp/"

    .line 71
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/ed/EDApplicationState;

    invoke-interface {v4}, Lcom/eltechs/ed/EDApplicationState;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->winePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/dosdevices/e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/"

    .line 73
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/ed/EDApplicationState;

    invoke-interface {v4}, Lcom/eltechs/ed/EDApplicationState;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->winePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/dosdevices/z:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TREAT_LSTAT_SOCKET_AS_STATTING_WINESERVER_SOCKET:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    sget-object v3, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TRUNCATE_STAT_INODE:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    sget-object v4, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->SIMPLE_PASS_DEV:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    invoke-static {v1, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setVfsHacks(Ljava/util/Set;)V

    .line 77
    iget-object v1, p0, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->socketPathSuffix:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setSocketPathSuffix(Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v2}, Lcom/eltechs/ed/EDApplicationState;->setUBTLaunchConfiguration(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;)V

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;->sendDone()V

    return-void
.end method
