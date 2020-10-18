.class public final Lorg/apache/commons/compress/changes/ChangeSet;
.super Ljava/lang/Object;
.source "ChangeSet.java"


# instance fields
.field private final changes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    return-void
.end method

.method private addAddition(Lorg/apache/commons/compress/changes/Change;)V
    .locals 4

    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getInput()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/changes/Change;

    .line 102
    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private addDeletion(Lorg/apache/commons/compress/changes/Change;)V
    .locals 7

    .line 128
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 133
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 135
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 136
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/changes/Change;

    .line 138
    invoke-virtual {v4}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 140
    invoke-virtual {v4}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v5

    if-ne v2, v5, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 148
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v5

    if-ne v1, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/.*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 155
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    return-void
.end method

.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1

    .line 84
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/compress/changes/Change;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addAddition(Lorg/apache/commons/compress/changes/Change;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/changes/Change;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addDeletion(Lorg/apache/commons/compress/changes/Change;)V

    return-void
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 2

    .line 56
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/changes/Change;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addDeletion(Lorg/apache/commons/compress/changes/Change;)V

    return-void
.end method

.method getChanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
