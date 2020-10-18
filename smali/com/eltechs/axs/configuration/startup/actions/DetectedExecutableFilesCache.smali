.class public Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;
.super Ljava/lang/Object;
.source "DetectedExecutableFilesCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;,
        Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_NAME_PREFIX:Ljava/lang/String; = "executable_files_list_cache_"


# instance fields
.field private final cachedDirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private rootDir:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->rootDir:Ljava/io/File;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedDirectories:Ljava/util/Set;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedFiles:Ljava/util/Set;

    return-void
.end method

.method public static createEmpty(Ljava/io/File;)Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;
    .locals 5

    .line 77
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;-><init>(Ljava/io/File;)V

    .line 79
    iget-object v1, v0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedDirectories:Ljava/util/Set;

    new-instance v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;-><init>(Ljava/io/File;J)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static load(Ljava/io/File;)Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;
    .locals 7

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executable_files_list_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->openPrivateFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;

    .line 64
    iput-object p0, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->rootDir:Ljava/io/File;

    .line 66
    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->isUpToDate()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 67
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object v2

    :catchall_0
    move-exception v2

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 59
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    .line 67
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_3
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "DetectedExecutableFilesCache"

    const-string v3, "There was an error reading the cache for \'%s\'."

    const/4 v4, 0x1

    .line 70
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public addFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 141
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedFiles:Ljava/util/Set;

    new-instance v1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;

    invoke-direct {v1, p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    iget-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->rootDir:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 145
    iget-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedDirectories:Ljava/util/Set;

    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;-><init>(Ljava/io/File;J)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doWithFiles(Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;

    .line 133
    iget-object v2, v1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->parentDir:Ljava/io/File;

    iget-object v1, v1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;->apply(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isUpToDate()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedDirectories:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;

    .line 103
    iget-object v4, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->modificationTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_2
    :goto_0
    return v3

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->cachedFiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;

    .line 115
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->parentDir:Ljava/io/File;

    iget-object v2, v2, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_5

    return v3

    .line 120
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public persist()V
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executable_files_list_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->openPrivateFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 89
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 91
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 91
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_2
    :goto_2
    return-void
.end method
