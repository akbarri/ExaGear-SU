.class public Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;
.super Ljava/lang/Object;
.source "ShmSegmentLifecycleListenerList.java"


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendSegmentAttached(Lcom/eltechs/axs/xserver/ShmSegment;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;

    .line 45
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;->segmentAttached(Lcom/eltechs/axs/xserver/ShmSegment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendSegmentDetached(Lcom/eltechs/axs/xserver/ShmSegment;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;

    .line 58
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;->segmentDetached(Lcom/eltechs/axs/xserver/ShmSegment;)V

    goto :goto_0

    :cond_0
    return-void
.end method
