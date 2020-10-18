.class interface abstract Lcom/google/analytics/tracking/android/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# virtual methods
.method public abstract clearHits()V
.end method

.method public abstract createService()V
.end method

.method public abstract dispatch()V
.end method

.method public abstract putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setForceLocalDispatch()V
.end method
