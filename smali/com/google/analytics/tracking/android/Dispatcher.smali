.class interface abstract Lcom/google/analytics/tracking/android/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract dispatchHits(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract okToDispatch()Z
.end method

.method public abstract overrideHostUrl(Ljava/lang/String;)V
.end method
