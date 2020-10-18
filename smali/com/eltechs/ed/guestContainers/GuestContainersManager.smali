.class public Lcom/eltechs/ed/guestContainers/GuestContainersManager;
.super Ljava/lang/Object;
.source "GuestContainersManager.java"


# static fields
.field private static final CONTAINER_DESKTOP_DIR:Ljava/lang/String; = ".wine/drive_c/users/xdroid/Desktop/"

.field private static final CONTAINER_DIR_PREFIX:Ljava/lang/String; = "xdroid_"

.field private static final CONTAINER_ICONS_32x32_DIR:Ljava/lang/String; = ".local/share/icons/hicolor/32x32/apps/"

.field private static final CONTAINER_PATTERN_GUEST_DIR:Ljava/lang/String; = "/opt/guestcont-pattern/"

.field private static final CONTAINER_START_MENU_DIR:Ljava/lang/String; = ".local/share/applications/wine/Programs/"

.field public static final LOCAL_RUN_SCRIPT:Ljava/lang/String; = "run.sh"

.field private static final NOTEPAD_GUEST_PATH:Ljava/lang/String; = "/opt/AkelPad.exe"

.field public static final RECIPES_GUEST_DIR:Ljava/lang/String; = "/opt/recipe/"

.field public static final TAG:Ljava/lang/String; = "GuestContainersManager"

.field private static volatile mInstance:Lcom/eltechs/ed/guestContainers/GuestContainersManager;


# instance fields
.field private mContainers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/eltechs/ed/guestContainers/GuestContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHomeDir:Ljava/io/File;

.field private mImageDir:Ljava/io/File;

.field private mMaxContainerId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "image"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    .line 68
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v1, "home"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mHomeDir:Ljava/io/File;

    .line 71
    invoke-direct {p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->makeContainersList()V

    .line 73
    invoke-virtual {p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->convertFromOldVersion()V

    return-void
.end method

.method private convertXDGLinks(Ljava/io/File;Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 4

    .line 456
    invoke-virtual {p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestWinePrefixPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v3, ".wine/drive_c/users/xdroid/Desktop/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->fixWinePrefixForXDGLinks(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v2, ".local/share/applications/wine/Programs/"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->fixWinePrefixForXDGLinks(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillContainerInfo(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.wine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mWinePrefixPath:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v2, ".wine/drive_c/users/xdroid/Desktop/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mDesktopPath:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v2, ".local/share/applications/wine/Programs/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mStartMenuPath:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v2, ".local/share/icons/hicolor/32x32/apps/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mIconsPath:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;-><init>(Landroid/content/Context;Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    iput-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    return-void
.end method

.method private fixWinePrefixForXDGLinks(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 419
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 424
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 426
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    invoke-direct {p0, v2, p2, p3}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->fixWinePrefixForXDGLinks(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    .line 431
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".desktop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    :try_start_0
    invoke-static {v2, p2, p3}, Lcom/eltechs/axs/helpers/FileHelpers;->replaceStringInFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 439
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;
    .locals 2

    const-class v0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mInstance:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mInstance:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 82
    :cond_0
    sget-object p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mInstance:Lcom/eltechs/ed/guestContainers/GuestContainersManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0

    throw p0
.end method

.method private initNewContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;Lcom/eltechs/ed/guestContainers/GuestContainer;)Z
    .locals 6

    if-eqz p2, :cond_0

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v2, "/opt/guestcont-pattern/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-direct {p0, p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->fillContainerInfo(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    .line 208
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    :try_start_0
    new-instance v2, Lcom/eltechs/ed/guestContainers/GuestContainersManager$1;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager$1;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainersManager;)V

    const/4 v3, 0x1

    .line 223
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    .line 226
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mWinePrefixPath:Ljava/lang/String;

    const-string v4, "run.sh"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    new-instance v2, Ljava/io/File;

    const-string v4, "/opt/recipe/"

    invoke-virtual {p0, v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getHostPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "run/simple.sh"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez p2, :cond_2

    .line 245
    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->loadDefaults()V

    goto :goto_1

    .line 248
    :cond_2
    invoke-static {p2, p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->cloneContainerConfig(Lcom/eltechs/ed/guestContainers/GuestContainer;Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    :goto_1
    return v3

    .line 235
    :catch_0
    :try_start_1
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method private static loadOldWinePrefixScreenInfo(Ljava/lang/String;)Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 4

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 400
    :try_start_0
    invoke-static {p0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->openPrivateFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 402
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/ScreenInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 404
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 400
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v2, :cond_1

    .line 404
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_5
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v0
.end method

.method private makeContainersList()V
    .locals 8

    .line 155
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    const-wide/16 v0, 0x0

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    .line 159
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mHomeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xdroid_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    new-instance v4, Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {v4}, Lcom/eltechs/ed/guestContainers/GuestContainer;-><init>()V

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xdroid_"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 173
    iput-object v5, v4, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    .line 174
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    .line 176
    invoke-direct {p0, v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->fillContainerInfo(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    .line 178
    iget-object v3, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 180
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v6, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-lez v3, :cond_2

    .line 182
    iput-object v5, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private processAndUpdateRunScript(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mWinePrefixPath:Ljava/lang/String;

    const-string v2, "run.sh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 478
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 479
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 480
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 481
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, " -w"

    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    const-string v1, "-w"

    invoke-virtual {p1, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunArguments(Ljava/lang/String;)V

    .line 487
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v1, "/opt/recipe/"

    invoke-virtual {p0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getHostPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "run/simple.sh"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public cloneContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->createContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-void
.end method

.method public convertFromOldVersion()V
    .locals 11

    .line 495
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v2, "/home/xdroid/wp/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 506
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->createContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v5

    .line 515
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    iget-object v7, v5, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-static {v6}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->loadOldWinePrefixScreenInfo(Ljava/lang/String;)Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V

    .line 523
    :try_start_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v8, "/home/xdroid/.local/share/icons"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, v5, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v9, ".local/share/icons"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 525
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v8, "/home/xdroid/.local/share/applications/wine/Programs/"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, v5, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v9, ".local/share/applications/wine/Programs/"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :catch_0
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    const-string v8, ".wine"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :try_start_1
    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :catch_1
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 544
    invoke-direct {p0, v4, v5}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->convertXDGLinks(Ljava/io/File;Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    .line 547
    new-instance v7, Lcom/eltechs/ed/WineRegistryEditor;

    new-instance v8, Ljava/io/File;

    const-string v9, "user.reg"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/eltechs/ed/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 550
    :try_start_2
    invoke-virtual {v7}, Lcom/eltechs/ed/WineRegistryEditor;->read()V

    const-string v8, "Software\\Wine\\DirectInput"

    const-string v9, "MouseWarpOverride"

    const-string v10, "disable"

    .line 551
    invoke-virtual {v7, v8, v9, v10}, Lcom/eltechs/ed/WineRegistryEditor;->setStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 554
    :try_start_3
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v10, "/opt/AkelPad.exe"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "drive_c/windows/notepad.exe"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 555
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v10, "/opt/AkelPad.exe"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "drive_c/windows/system32/notepad.exe"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    const-string v8, "Software\\Wine\\DllOverrides"

    const-string v9, "notepad.exe"

    const-string v10, "native,builtin"

    .line 556
    invoke-virtual {v7, v8, v9, v10}, Lcom/eltechs/ed/WineRegistryEditor;->setStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 560
    :catch_2
    :try_start_4
    invoke-virtual {v7}, Lcom/eltechs/ed/WineRegistryEditor;->write()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 568
    :catch_3
    :try_start_5
    invoke-direct {p0, v5}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->processAndUpdateRunScript(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 576
    :catch_4
    :try_start_6
    new-instance v5, Ljava/io/File;

    const-string v7, "user.reg"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-virtual {p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestWinePrefixPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 576
    invoke-static {v5, v4, v6}, Lcom/eltechs/axs/helpers/FileHelpers;->replaceStringInFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 585
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v3, "/home/xdroid/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    const-string v4, "/home/old_xdroid/"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v2, 0x1

    .line 587
    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    return-void
.end method

.method public copyXDGLinkToDesktop(Lcom/eltechs/ed/XDGLink;)V
    .locals 3

    .line 377
    iget-object v0, p1, Lcom/eltechs/ed/XDGLink;->linkFile:Ljava/io/File;

    .line 378
    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/eltechs/ed/XDGLink;->guestCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mDesktopPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public createContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->createContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v0

    return-object v0
.end method

.method public createContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mHomeDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xdroid_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 274
    :cond_0
    new-instance v4, Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {v4}, Lcom/eltechs/ed/guestContainers/GuestContainer;-><init>()V

    .line 275
    iput-object v0, v4, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    .line 278
    invoke-direct {p0, v4, p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->initNewContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;Lcom/eltechs/ed/guestContainers/GuestContainer;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v5

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    iget-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mMaxContainerId:Ljava/lang/Long;

    .line 284
    iget-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    return-object v4
.end method

.method public deleteContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 4

    .line 294
    invoke-virtual {p0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getCurrentContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->makeContainerCurrent(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    .line 300
    :cond_0
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->deleteConfig()V

    .line 301
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 304
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mPath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 312
    :catch_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corrupted_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public getContainerById(Ljava/lang/Long;)Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-object p1
.end method

.method public getContainersList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/guestContainers/GuestContainer;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCurrentContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getCurrentGuestContId()Ljava/lang/Long;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContainers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/guestContainers/GuestContainer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGuestImagePath()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuestPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/FileHelpers;->cutRootPrefixFromPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGuestWinePrefixPath()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mHomeDir:Ljava/io/File;

    const-string v2, "xdroid/.wine"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mImageDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconPath(Lcom/eltechs/ed/XDGLink;)Ljava/lang/String;
    .locals 3

    .line 360
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/eltechs/ed/XDGLink;->guestCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v1, v1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mIconsPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/eltechs/ed/XDGLink;->icon:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public makeContainerActive(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 3

    .line 350
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mHomeDir:Ljava/io/File;

    const-string v2, "xdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "./xdroid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeContainerCurrent(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/AppConfig;->setCurrentGuestContId(Ljava/lang/Long;)V

    return-void
.end method
