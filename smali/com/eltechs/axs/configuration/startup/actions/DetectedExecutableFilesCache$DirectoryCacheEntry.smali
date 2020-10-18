.class public Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;
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
    name = "DirectoryCacheEntry"
.end annotation


# instance fields
.field public final dir:Ljava/io/File;

.field public final modificationTime:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    .line 157
    iput-wide p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->modificationTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 163
    instance-of v0, p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_0
    check-cast p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;

    .line 169
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    iget-object p1, p1, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache$DirectoryCacheEntry;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method
