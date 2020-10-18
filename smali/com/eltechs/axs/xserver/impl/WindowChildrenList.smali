.class public Lcom/eltechs/axs/xserver/impl/WindowChildrenList;
.super Ljava/lang/Object;
.source "WindowChildrenList.java"


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Lcom/eltechs/axs/xserver/Window;

.field private final immutableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->immutableChildren:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->host:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public add(Lcom/eltechs/axs/xserver/Window;)V
    .locals 4

    .line 28
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "The window %s already has a parent."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xserver/Window;->setParent(Lcom/eltechs/axs/xserver/Window;)V

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->immutableChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPrevSibling(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Window;

    :goto_0
    return-object p1
.end method

.method public moveAbove(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public moveBelow(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 90
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public remove(Lcom/eltechs/axs/xserver/Window;)V
    .locals 5

    .line 36
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->host:Lcom/eltechs/axs/xserver/Window;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "The window %s is not a child of %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->host:Lcom/eltechs/axs/xserver/Window;

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-interface {p1, v0}, Lcom/eltechs/axs/xserver/Window;->setParent(Lcom/eltechs/axs/xserver/Window;)V

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
