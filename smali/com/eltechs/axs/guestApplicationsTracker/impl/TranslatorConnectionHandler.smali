.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnectionHandler;
.super Ljava/lang/Object;
.source "TranslatorConnectionHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
        "Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnectionHandler;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->processShutdown()V

    return-void
.end method

.method public bridge synthetic handleConnectionShutdown(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnectionHandler;->handleConnectionShutdown(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V

    return-void
.end method

.method public handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;
    .locals 1

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 29
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 31
    new-instance p1, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;-><init>(Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    return-object p1
.end method

.method public bridge synthetic handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnectionHandler;->handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    move-result-object p1

    return-object p1
.end method
