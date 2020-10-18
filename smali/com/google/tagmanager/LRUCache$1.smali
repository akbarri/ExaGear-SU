.class Lcom/google/tagmanager/LRUCache$1;
.super Landroid/util/LruCache;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/LRUCache;-><init>(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/LRUCache;

.field final synthetic val$sizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/LRUCache;ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/tagmanager/LRUCache$1;->this$0:Lcom/google/tagmanager/LRUCache;

    iput-object p3, p0, Lcom/google/tagmanager/LRUCache$1;->val$sizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/tagmanager/LRUCache$1;->val$sizeManager:Lcom/google/tagmanager/CacheFactory$CacheSizeManager;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/CacheFactory$CacheSizeManager;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
