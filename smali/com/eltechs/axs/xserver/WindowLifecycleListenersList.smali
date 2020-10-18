.class public Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;
.super Ljava/lang/Object;
.source "WindowLifecycleListenersList.java"


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/WindowLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendWindowCreated(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 29
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListener;->windowCreated(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 69
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListener;->windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 37
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListener;->windowMapped(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 53
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/xserver/WindowLifecycleListener;->windowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 45
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListener;->windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 61
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListener;->windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method
