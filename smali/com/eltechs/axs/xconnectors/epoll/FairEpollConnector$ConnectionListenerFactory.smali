.class public interface abstract Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;
.super Ljava/lang/Object;
.source "FairEpollConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionListenerFactory"
.end annotation


# virtual methods
.method public abstract createConnectionListener()Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
