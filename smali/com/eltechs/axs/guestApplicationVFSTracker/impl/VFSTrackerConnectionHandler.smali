.class public Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnectionHandler;
.super Ljava/lang/Object;
.source "VFSTrackerConnectionHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
        "Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic handleConnectionShutdown(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnectionHandler;->handleConnectionShutdown(Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;)V

    return-void
.end method

.method public handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;
    .locals 1

    .line 14
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 15
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 17
    new-instance p1, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;-><init>(Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    return-object p1
.end method

.method public bridge synthetic handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnectionHandler;->handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;

    move-result-object p1

    return-object p1
.end method
