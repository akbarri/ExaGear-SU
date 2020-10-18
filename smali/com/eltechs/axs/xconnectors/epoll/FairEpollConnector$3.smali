.class final Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$3;
.super Ljava/lang/Object;
.source "FairEpollConnector.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$ConnectionListenerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;->listenOnLoopbackInetAddress(ILcom/eltechs/axs/proto/input/ConnectionHandler;Lcom/eltechs/axs/xconnectors/RequestHandler;)Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$port:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$3;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnectionListener()Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/FairEpollConnector$3;->val$port:I

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->forLoopbackInetAddress(I)Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    move-result-object v0

    return-object v0
.end method
