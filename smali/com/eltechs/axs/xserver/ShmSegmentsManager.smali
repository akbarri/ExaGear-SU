.class public interface abstract Lcom/eltechs/axs/xserver/ShmSegmentsManager;
.super Ljava/lang/Object;
.source "ShmSegmentsManager.java"


# virtual methods
.method public abstract addShmSegmentLifecycleListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V
.end method

.method public abstract attachSegment(IIZ)Lcom/eltechs/axs/xserver/ShmSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/errors/BadAccess;
        }
    .end annotation
.end method

.method public abstract detachSegment(Lcom/eltechs/axs/xserver/ShmSegment;)V
.end method

.method public abstract getSegment(I)Lcom/eltechs/axs/xserver/ShmSegment;
.end method

.method public abstract removeShmSegmentLifecycleListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V
.end method
