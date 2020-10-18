.class Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private nextCalledBeforeRemove:Z

.field private pos:I

.field final synthetic this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/protobuf/SmallSortedMap;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 506
    iput p1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/SmallSortedMap;Lcom/google/tagmanager/protobuf/SmallSortedMap$1;)V
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/google/tagmanager/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private getOverflowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$600(Lcom/google/tagmanager/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 512
    iget v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$400(Lcom/google/tagmanager/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 521
    iget v1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$400(Lcom/google/tagmanager/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$400(Lcom/google/tagmanager/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 529
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 533
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$200(Lcom/google/tagmanager/protobuf/SmallSortedMap;)V

    .line 535
    iget v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$400(Lcom/google/tagmanager/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    iget v1, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->access$500(Lcom/google/tagmanager/protobuf/SmallSortedMap;I)Ljava/lang/Object;

    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void
.end method
