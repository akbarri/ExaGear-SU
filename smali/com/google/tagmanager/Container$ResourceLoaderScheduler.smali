.class interface abstract Lcom/google/tagmanager/Container$ResourceLoaderScheduler;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResourceLoaderScheduler"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract loadAfterDelay(JLjava/lang/String;)V
.end method

.method public abstract setCtfeURLPathAndQuery(Ljava/lang/String;)V
.end method

.method public abstract setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/LoadCallback<",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            ">;)V"
        }
    .end annotation
.end method
