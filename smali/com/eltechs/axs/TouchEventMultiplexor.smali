.class public Lcom/eltechs/axs/TouchEventMultiplexor;
.super Ljava/lang/Object;
.source "TouchEventMultiplexor.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/TouchEventAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/TouchEventAdapter;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchEventAdapter;

    .line 65
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/TouchEventAdapter;->notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchEventAdapter;

    .line 74
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/TouchEventAdapter;->notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchEventAdapter;

    .line 83
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/TouchEventAdapter;->notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchEventAdapter;

    .line 56
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/TouchEventAdapter;->notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchEventAdapter;

    .line 47
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/TouchEventAdapter;->notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/TouchEventMultiplexor;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
