.class interface abstract Lcom/google/tagmanager/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract dispatchHits(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/Hit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract okToDispatch()Z
.end method
