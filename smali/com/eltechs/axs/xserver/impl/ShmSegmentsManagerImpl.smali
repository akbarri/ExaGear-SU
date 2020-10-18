.class public Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;
.super Ljava/lang/Object;
.source "ShmSegmentsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/ShmSegmentsManager;


# instance fields
.field private final segments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/ShmSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

.field private final shmSegmentLifecycleListenerList:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/sysvipc/SHMEngine;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->segments:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    .line 30
    new-instance p1, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmSegmentLifecycleListenerList:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;

    return-void
.end method


# virtual methods
.method public addShmSegmentLifecycleListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmSegmentLifecycleListenerList:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->addListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V

    return-void
.end method

.method public attachSegment(IIZ)Lcom/eltechs/axs/xserver/ShmSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/errors/BadAccess;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->segments:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->segments:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/ShmSegment;

    .line 44
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->detachSegment(Lcom/eltechs/axs/xserver/ShmSegment;)V

    .line 47
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;-><init>(Lcom/eltechs/axs/sysvipc/SHMEngine;IIZ)V

    .line 48
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->segments:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmSegmentLifecycleListenerList:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->sendSegmentAttached(Lcom/eltechs/axs/xserver/ShmSegment;)V

    return-object v0
.end method

.method public detachSegment(Lcom/eltechs/axs/xserver/ShmSegment;)V
    .locals 2

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->detach()V

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->segments:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/ShmSegment;->getXid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmSegmentLifecycleListenerList:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->sendSegmentDetached(Lcom/eltechs/axs/xserver/ShmSegment;)V

    return-void
.end method

.method public getSegment(I)Lcom/eltechs/axs/xserver/ShmSegment;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->segments:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/ShmSegment;

    return-object p1
.end method

.method public getShmEngine()Lcom/eltechs/axs/sysvipc/SHMEngine;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    return-object v0
.end method

.method public removeShmSegmentLifecycleListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->shmSegmentLifecycleListenerList:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListenerList;->removeListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V

    return-void
.end method
