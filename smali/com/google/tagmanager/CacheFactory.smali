.class Lcom/google/tagmanager/CacheFactory;
.super Ljava/lang/Object;
.source "CacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/CacheFactory$CacheSizeManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mDefaultSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/tagmanager/CacheFactory$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/CacheFactory$1;-><init>(Lcom/google/tagmanager/CacheFactory;)V

    iput-object v0, p0, Lcom/google/tagmanager/CacheFactory;->mDefaultSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    return-void
.end method


# virtual methods
.method public createCache(I)Lcom/google/tagmanager/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/tagmanager/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/tagmanager/CacheFactory;->mDefaultSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object p1

    return-object p1
.end method

.method public createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
            "TK;TV;>;)",
            "Lcom/google/tagmanager/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/CacheFactory;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 62
    new-instance v0, Lcom/google/tagmanager/SimpleCache;

    invoke-direct {v0, p1, p2}, Lcom/google/tagmanager/SimpleCache;-><init>(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/google/tagmanager/LRUCache;

    invoke-direct {v0, p1, p2}, Lcom/google/tagmanager/LRUCache;-><init>(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V

    return-object v0
.end method

.method getSdkVersion()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
