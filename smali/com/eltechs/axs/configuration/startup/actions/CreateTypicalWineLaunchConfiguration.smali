.class public Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "CreateTypicalWineLaunchConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/EnvironmentAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/ExagearImageAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/UBTLaunchConfigurationAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final additionalDiskPointsToGameDir:Z

.field private final argv:[Ljava/lang/String;

.field private final envp:[Ljava/lang/String;

.field private final homeDir:Ljava/lang/String;

.field private final putAdditionalDisks:Z

.field private final socketPathSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->homeDir:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->argv:[Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->envp:[Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->socketPathSuffix:Ljava/lang/String;

    .line 47
    iput-boolean p5, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->putAdditionalDisks:Z

    .line 48
    iput-boolean p6, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->additionalDiskPointsToGameDir:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .line 54
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getParentDir()Ljava/io/File;

    move-result-object v2

    .line 56
    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v1

    .line 57
    invoke-static {v2}, Lcom/eltechs/axs/helpers/FileHelpers;->getExagearRootFromPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;

    invoke-direct {v4}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;-><init>()V

    .line 60
    move-object v5, v0

    check-cast v5, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v5}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setFsRoot(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestExecutablePath(Ljava/lang/String;)V

    const-string v5, "/usr/bin/wine"

    .line 62
    invoke-virtual {v4, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestExecutable(Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->argv:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestArguments([Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->envp:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setGuestEnvironmentVariables([Ljava/lang/String;)V

    const-string v5, "LC_ALL"

    .line 66
    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getLocaleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->addArgumentsToEnvironment(Lcom/eltechs/axs/environmentService/AXSEnvironment;)V

    const-string v1, "EXADROID_DISABLE_SHORT_NAMES"

    const-string v5, "y"

    .line 70
    invoke-virtual {v4, v1, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eltechs/axs/helpers/FileHelpers;->checkCaseInsensitivityInDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXADROID_FS_CASE_INSENSITIVE"

    const-string v5, "y"

    .line 77
    invoke-virtual {v4, v1, v5}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    :try_start_1
    new-instance v5, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->getApplicationState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    check-cast v6, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v6}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;-><init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->homeDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".wine/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dosdevices/c_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "drive_c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dosdevices/d_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dosdevices"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "d_"

    invoke-virtual {v5, v7, v8, v3}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->createFakeSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v7, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->putAdditionalDisks:Z

    if-eqz v7, :cond_2

    .line 109
    iget-boolean v7, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->additionalDiskPointsToGameDir:Z

    if-eqz v7, :cond_1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "dosdevices/e_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "dosdevices"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "e_"

    invoke-virtual {v5, v3, v6, v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->createFakeSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "dosdevices/e_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "dosdevices"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "e_"

    invoke-virtual {v5, v1, v6, v3}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->createFakeSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_2
    :goto_0
    invoke-virtual {v4, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setFileNameReplacements(Ljava/util/Map;)V

    .line 129
    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->ASSUME_NO_SYMLINKS_EXCEPT_PRERESOLVED:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    sget-object v2, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TREAT_LSTAT_SOCKET_AS_STATTING_WINESERVER_SOCKET:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setVfsHacks(Ljava/util/Set;)V

    .line 130
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->socketPathSuffix:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->setSocketPathSuffix(Ljava/lang/String;)V

    .line 132
    check-cast v0, Lcom/eltechs/axs/applicationState/UBTLaunchConfigurationAware;

    invoke-interface {v0, v4}, Lcom/eltechs/axs/applicationState/UBTLaunchConfigurationAware;->setUBTLaunchConfiguration(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;)V

    .line 133
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->sendDone()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to create fake symlink."

    .line 122
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to check exagear directory properties."

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalWineLaunchConfiguration;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
