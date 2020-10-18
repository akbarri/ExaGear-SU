.class public Lcom/eltechs/axs/xconnectors/epoll/impl/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Context:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clientSocket:Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;

.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContext;"
        }
    .end annotation
.end field

.field private final inputStream:Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;

.field private isQueuedForProcessingBufferedMessages:Z

.field private final outputStream:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContext;",
            "Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;",
            "Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;",
            "Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->context:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->clientSocket:Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;

    .line 34
    iput-object p3, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->inputStream:Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;

    .line 35
    iput-object p4, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->outputStream:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->clientSocket:Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->close()V

    return-void
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContext;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getFd()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->clientSocket:Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/SocketWrapper;->getFd()I

    move-result v0

    return v0
.end method

.method public getInputStream()Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->inputStream:Lcom/eltechs/axs/xconnectors/impl/XInputStreamImpl;

    return-object v0
.end method

.method public getOutputStream()Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->outputStream:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    return-object v0
.end method

.method public isQueuedForProcessingBufferedMessages()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->isQueuedForProcessingBufferedMessages:Z

    return v0
.end method

.method public setQueuedForProcessingBufferedMessages(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/Client;->isQueuedForProcessingBufferedMessages:Z

    return-void
.end method
