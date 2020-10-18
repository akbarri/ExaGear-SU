.class public Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;
.super Ljava/lang/Object;
.source "ALSAClientConnectionHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
        "Lcom/eltechs/axs/alsaServer/ALSAClient;",
        ">;"
    }
.end annotation


# instance fields
.field final soundServer:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/alsaServer/PCMPlayersManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;->soundServer:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/eltechs/axs/alsaServer/ALSAClient;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->reset()V

    return-void
.end method

.method public bridge synthetic handleConnectionShutdown(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/eltechs/axs/alsaServer/ALSAClient;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;->handleConnectionShutdown(Lcom/eltechs/axs/alsaServer/ALSAClient;)V

    return-void
.end method

.method public handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/alsaServer/ALSAClient;
    .locals 1

    .line 36
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 37
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 39
    new-instance p1, Lcom/eltechs/axs/alsaServer/ALSAClient;

    iget-object p2, p0, Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;->soundServer:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/alsaServer/ALSAClient;-><init>(Lcom/eltechs/axs/alsaServer/PCMPlayersManager;)V

    return-object p1
.end method

.method public bridge synthetic handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/alsaServer/ALSAClientConnectionHandler;->handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/alsaServer/ALSAClient;

    move-result-object p1

    return-object p1
.end method
