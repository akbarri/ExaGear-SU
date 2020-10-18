.class public interface abstract Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/SimpleNetworkDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DispatchListener"
.end annotation


# virtual methods
.method public abstract onHitDispatched(Lcom/google/tagmanager/Hit;)V
.end method

.method public abstract onHitPermanentDispatchFailure(Lcom/google/tagmanager/Hit;)V
.end method

.method public abstract onHitTransientDispatchFailure(Lcom/google/tagmanager/Hit;)V
.end method
