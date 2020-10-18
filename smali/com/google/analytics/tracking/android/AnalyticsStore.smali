.class interface abstract Lcom/google/analytics/tracking/android/AnalyticsStore;
.super Ljava/lang/Object;
.source "AnalyticsStore.java"


# virtual methods
.method public abstract clearHits(J)V
.end method

.method public abstract close()V
.end method

.method public abstract dispatch()V
.end method

.method public abstract getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;
.end method

.method public abstract putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDispatch(Z)V
.end method
