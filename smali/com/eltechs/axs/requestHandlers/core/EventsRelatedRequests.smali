.class public Lcom/eltechs/axs/requestHandlers/core/EventsRelatedRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "EventsRelatedRequests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public SendEvent(Lcom/eltechs/axs/xconnectors/XResponse;ZILcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/events/Event;)V
    .locals 0
    .param p2    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Lcom/eltechs/axs/xserver/events/Event;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/GiantLocked;
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/XResponse;",
            "ZI",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/events/Event;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 39
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/EventsRelatedRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/eltechs/axs/xserver/WindowsManager;->getWindow(I)Lcom/eltechs/axs/xserver/Window;

    move-result-object p1

    .line 41
    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 44
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getCreator()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->createEventSender()Lcom/eltechs/axs/proto/output/XEventSender;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/eltechs/axs/proto/output/XEventSender;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p1

    invoke-virtual {p1, p5, p4}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :goto_1
    return-void
.end method
