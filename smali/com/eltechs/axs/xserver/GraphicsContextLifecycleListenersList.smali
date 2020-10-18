.class public Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;
.super Ljava/lang/Object;
.source "GraphicsContextLifecycleListenersList.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendGraphicsContextCreated(Lcom/eltechs/axs/xserver/GraphicsContext;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;

    .line 49
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;->graphicsContextCreated(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendGraphicsContextFreed(Lcom/eltechs/axs/xserver/GraphicsContext;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;

    .line 62
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;->graphicsContextFreed(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method
