.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/TranslatorStarted;
.super Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/RequestHandlerBase;
.source "TranslatorStarted.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/RequestHandlerBase;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V

    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result p3

    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 30
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 33
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    .line 34
    iget-object p3, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/TranslatorStarted;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {p3, p2, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translatorStarted(ILcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V

    .line 35
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1
.end method

.method public bridge synthetic handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/TranslatorStarted;->handleRequest(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1
.end method
