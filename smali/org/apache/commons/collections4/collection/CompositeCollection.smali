.class public Lorg/apache/commons/collections4/collection/CompositeCollection;
.super Ljava/lang/Object;
.source "CompositeCollection.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74d105f656c97d71L


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method

.method public static varargs of([Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/commons/collections4/collection/CompositeCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;-><init>([Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-nez v0, :cond_0

    .line 224
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->add(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-nez v0, :cond_0

    .line 281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addAll() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->addAll(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addComposited(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object p1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addComposited([Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 333
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 334
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 138
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMutator()Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 121
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 160
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 161
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-nez v0, :cond_0

    .line 243
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->remove(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 302
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removeComposited(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 320
    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public setMutator(Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;)V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    return-void
.end method

.method public size()I
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 107
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->size()I

    move-result v0

    .line 192
    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 200
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .line 201
    aput-object v4, p1, v1

    move v1, v5

    goto :goto_1

    .line 204
    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    const/4 v1, 0x0

    .line 205
    aput-object v1, p1, v0

    .line 207
    :cond_3
    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public toCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
