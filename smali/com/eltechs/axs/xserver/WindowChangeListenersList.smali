.class public Lcom/eltechs/axs/xserver/WindowChangeListenersList;
.super Ljava/lang/Object;
.source "WindowChangeListenersList.java"


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendWindowAttributeChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowChangeListener;

    .line 65
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/xserver/WindowChangeListener;->attributesChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowGeometryChanged(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowChangeListener;

    .line 51
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowChangeListener;->geometryChanged(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method
