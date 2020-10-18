.class public Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "DetectExecutableFiles.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/AsyncStartupAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;,
        Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;",
        "Lcom/eltechs/axs/configuration/startup/AsyncStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final DIR_WITH_USER_APPLICATION_SEARCH_DEPTH:I = 0x1

.field private static final EXE_FILES_SEARCH_DEPTH:I = 0x3

.field private static final typicalHelperExeNames:[Ljava/lang/String;


# instance fields
.field private final detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection<",
            "TStateClass;>;"
        }
    .end annotation
.end field

.field private final useCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "setup"

    const-string v1, "install"

    const-string v2, "unins"

    const-string v3, "autorun"

    const-string v4, "msiexec"

    const-string v5, "update"

    .line 143
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->typicalHelperExeNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection<",
            "TStateClass;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;-><init>(Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection<",
            "TStateClass;>;Z)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    .line 48
    iput-boolean p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->useCache:Z

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;)Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    return-object p0
.end method

.method private applyPerApplicationSettings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;)V"
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    .line 166
    :try_start_0
    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->get(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->updateDetectedExecutableFileConfiguration()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isInstallerOrUninstallerOrUpdater(Ljava/lang/String;)Z
    .locals 5

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 149
    sget-object v0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->typicalHelperExeNames:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 151
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final removeDuplicatedFiles(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 9

    .line 79
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;-><init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;)V

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->getApplicationState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    check-cast v2, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;

    invoke-interface {v2}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;->getUserApplicationsDirectoryName()Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 81
    invoke-static {v1, v3, v2}, Lcom/eltechs/axs/helpers/FileFinder;->findDirectory(Ljava/io/File;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/io/File;

    const-string v4, "/storage"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->getApplicationState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    check-cast v4, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;

    invoke-interface {v4}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;->getUserApplicationsDirectoryName()Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;->getName()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v2, v3, v4}, Lcom/eltechs/axs/helpers/FileFinder;->findDirectory(Ljava/io/File;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->removeDuplicatedFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->load(Ljava/io/File;)Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 104
    iget-boolean v5, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->useCache:Z

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {v4, v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->doWithFiles(Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    goto :goto_0

    :cond_2
    const-string v4, "DetectedExecutableFiles"

    const-string v5, "Cache for \'%s\' is stale."

    .line 109
    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v2}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->createEmpty(Ljava/io/File;)Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;

    move-result-object v4

    const/4 v5, 0x3

    .line 113
    new-instance v6, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;)V

    invoke-static {v2, v5, v6}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->doWithExecutableFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    .line 122
    invoke-virtual {v4}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->persist()V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->getDetectedExecutableFiles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->applyPerApplicationSettings(Ljava/util/List;)V

    .line 127
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->getOtherExecutableFiles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->applyPerApplicationSettings(Ljava/util/List;)V

    .line 129
    new-instance v1, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;-><init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;)V

    invoke-static {v1}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Failed to enumerate executable files in /mnt/sdcard/ExaGear/."

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
    .locals 3

    .line 71
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/eltechs/axs/R$string;->sa_searching_for_exe_files:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
