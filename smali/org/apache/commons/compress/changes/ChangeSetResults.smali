.class public Lorg/apache/commons/compress/changes/ChangeSetResults;
.super Ljava/lang/Object;
.source "ChangeSetResults.java"


# instance fields
.field private final addedFromChangeSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final addedFromStream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addedFromChangeSet(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addedFromStream(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method deleted(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddedFromChangeSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    return-object v0
.end method

.method public getAddedFromStream()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    return-object v0
.end method

.method public getDeleted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted:Ljava/util/List;

    return-object v0
.end method

.method hasBeenAdded(Ljava/lang/String;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
