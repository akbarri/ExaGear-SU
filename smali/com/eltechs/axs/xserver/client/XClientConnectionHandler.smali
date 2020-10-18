.class public Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;
.super Ljava/lang/Object;
.source "XClientConnectionHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
        "Lcom/eltechs/axs/xserver/client/XClient;",
        ">;"
    }
.end annotation


# instance fields
.field private xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/eltechs/axs/xserver/client/XClient;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->freeAssociatedResources()V

    return-void
.end method

.method public bridge synthetic handleConnectionShutdown(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/eltechs/axs/xserver/client/XClient;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;->handleConnectionShutdown(Lcom/eltechs/axs/xserver/client/XClient;)V

    return-void
.end method

.method public handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/xserver/client/XClient;
    .locals 1

    .line 25
    new-instance p1, Lcom/eltechs/axs/xserver/client/XClient;

    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-direct {p1, v0, p2}, Lcom/eltechs/axs/xserver/client/XClient;-><init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    return-object p1
.end method

.method public bridge synthetic handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/xserver/client/XClientConnectionHandler;->handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object p1

    return-object p1
.end method
