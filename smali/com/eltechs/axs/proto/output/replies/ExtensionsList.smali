.class public Lcom/eltechs/axs/proto/output/replies/ExtensionsList;
.super Ljava/lang/Object;
.source "ExtensionsList.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "names",
        "pad"
    }
.end annotation


# instance fields
.field public final names:[Lcom/eltechs/axs/proto/output/replies/Str;

.field public final pad:[B


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/eltechs/axs/proto/output/replies/Str;

    iput-object v0, p0, Lcom/eltechs/axs/proto/output/replies/ExtensionsList;->names:[Lcom/eltechs/axs/proto/output/replies/Str;

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    iget-object v3, p0, Lcom/eltechs/axs/proto/output/replies/ExtensionsList;->names:[Lcom/eltechs/axs/proto/output/replies/Str;

    new-instance v4, Lcom/eltechs/axs/proto/output/replies/Str;

    invoke-direct {v4, v2}, Lcom/eltechs/axs/proto/output/replies/Str;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 31
    iget-object v2, p0, Lcom/eltechs/axs/proto/output/replies/ExtensionsList;->names:[Lcom/eltechs/axs/proto/output/replies/Str;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/eltechs/axs/proto/output/PODWriter;->getOnWireLength(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result p1

    .line 37
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/eltechs/axs/proto/output/replies/ExtensionsList;->pad:[B

    return-void
.end method
