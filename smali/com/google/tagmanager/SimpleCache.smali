.class Lcom/google/tagmanager/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/tagmanager/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/Cache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I

.field private final mSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mTotalSize:I


# direct methods
.method constructor <init>(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/SimpleCache;->mHashMap:Ljava/util/Map;

    .line 28
    iput p1, p0, Lcom/google/tagmanager/SimpleCache;->mMaxSize:I

    .line 29
    iput-object p2, p0, Lcom/google/tagmanager/SimpleCache;->mSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/SimpleCache;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/google/tagmanager/SimpleCache;->mTotalSize:I

    iget-object v1, p0, Lcom/google/tagmanager/SimpleCache;->mSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/CacheFactory$CacheSizeManager;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/SimpleCache;->mTotalSize:I

    .line 39
    iget v0, p0, Lcom/google/tagmanager/SimpleCache;->mTotalSize:I

    iget v1, p0, Lcom/google/tagmanager/SimpleCache;->mMaxSize:I

    if-le v0, v1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/google/tagmanager/SimpleCache;->mHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    iget v2, p0, Lcom/google/tagmanager/SimpleCache;->mTotalSize:I

    iget-object v3, p0, Lcom/google/tagmanager/SimpleCache;->mSizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/google/tagmanager/CacheFactory$CacheSizeManager;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/tagmanager/SimpleCache;->mTotalSize:I

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 46
    iget v1, p0, Lcom/google/tagmanager/SimpleCache;->mTotalSize:I

    iget v2, p0, Lcom/google/tagmanager/SimpleCache;->mMaxSize:I

    if-gt v1, v2, :cond_1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/google/tagmanager/SimpleCache;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 35
    :cond_3
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method
