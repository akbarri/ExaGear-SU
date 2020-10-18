.class public Lcom/eltechs/axs/widgets/actions/ActionGroup;
.super Ljava/lang/Object;
.source "ActionGroup.java"


# instance fields
.field private exclusive:Z

.field private final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    return-void
.end method

.method private checkCheckableStatusConsistency()V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {v0}, Lcom/eltechs/axs/widgets/actions/Action;->isCheckable()Z

    move-result v0

    .line 57
    iget-object v2, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/widgets/actions/Action;

    .line 59
    invoke-interface {v3}, Lcom/eltechs/axs/widgets/actions/Action;->isCheckable()Z

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    const-string v4, "All members of an ActionGroup must be simultaneously checkable or non-checkable."

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->checkCheckableStatusConsistency()V

    return-void
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {v0}, Lcom/eltechs/axs/widgets/actions/Action;->isCheckable()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isExclusive()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->exclusive:Z

    return v0
.end method

.method public remove(Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExclusive(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/eltechs/axs/widgets/actions/ActionGroup;->exclusive:Z

    return-void
.end method
