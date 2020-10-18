.class public Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;
.super Ljava/lang/Object;
.source "DetectedExecutableFilesCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCacheEntry"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final parentDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->parentDir:Ljava/io/File;

    .line 187
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 193
    instance-of v0, p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    check-cast p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;

    .line 199
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->parentDir:Ljava/io/File;

    iget-object v2, p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->parentDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->name:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$FileCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
