.class public Lcom/eltechs/axs/xserver/PointerListenersList;
.super Ljava/lang/Object;
.source "PointerListenersList.java"


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/PointerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendPointerButtonPressed(I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/PointerListener;

    .line 57
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/PointerListener;->pointerButtonPressed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendPointerButtonReleased(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/PointerListener;

    .line 70
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/PointerListener;->pointerButtonReleased(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendPointerMoved(II)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/PointerListener;

    .line 44
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/xserver/PointerListener;->pointerMoved(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendPointerWarped(II)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/PointerListener;

    .line 85
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/xserver/PointerListener;->pointerWarped(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
