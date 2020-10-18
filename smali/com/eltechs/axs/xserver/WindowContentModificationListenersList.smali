.class public Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;
.super Ljava/lang/Object;
.source "WindowContentModificationListenersList.java"


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/WindowContentModificationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendFrontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->listeners:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    .line 43
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowContentModificationListener;->frontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowContentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 8

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->listeners:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/eltechs/axs/xserver/WindowContentModificationListener;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 33
    invoke-interface/range {v2 .. v7}, Lcom/eltechs/axs/xserver/WindowContentModificationListener;->contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
