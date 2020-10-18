.class public Lcom/eltechs/axs/proto/output/replies/Depth;
.super Ljava/lang/Object;
.source "Depth.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "depth",
        "unused0",
        "numberOfVisuals",
        "unused1",
        "visuals"
    }
.end annotation


# instance fields
.field public final depth:B

.field public final numberOfVisuals:S

.field public final unused0:B

.field public final unused1:I

.field public final visuals:[Lcom/eltechs/axs/proto/output/replies/VisualType;


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/Depth;->unused0:B

    .line 22
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/Depth;->unused1:I

    .line 29
    invoke-direct {p0, p2}, Lcom/eltechs/axs/proto/output/replies/Depth;->getDisplayableVisuals(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    int-to-byte v1, p1

    .line 31
    iput-byte v1, p0, Lcom/eltechs/axs/proto/output/replies/Depth;->depth:B

    .line 33
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-byte v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/eltechs/axs/proto/output/replies/Depth;->numberOfVisuals:S

    .line 34
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/eltechs/axs/proto/output/replies/VisualType;

    iput-object v1, p0, Lcom/eltechs/axs/proto/output/replies/Depth;->visuals:[Lcom/eltechs/axs/proto/output/replies/VisualType;

    .line 37
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 39
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    const-string v5, "Visuals associated with a depth descriptor %d need to have the same depth, but %s has the depth %d."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v2, v6, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 39
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/eltechs/axs/proto/output/replies/Depth;->visuals:[Lcom/eltechs/axs/proto/output/replies/VisualType;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/eltechs/axs/proto/output/replies/VisualType;

    invoke-direct {v5, v2}, Lcom/eltechs/axs/proto/output/replies/VisualType;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    aput-object v5, v3, v1

    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDisplayableVisuals(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 58
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->isDisplayable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
