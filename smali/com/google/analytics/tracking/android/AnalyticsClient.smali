.class interface abstract Lcom/google/analytics/tracking/android/AnalyticsClient;
.super Ljava/lang/Object;
.source "AnalyticsClient.java"


# virtual methods
.method public abstract clearHits()V
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
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
