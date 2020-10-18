.class public Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "XTestRequests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public FakeInput(BBSILcom/eltechs/axs/xserver/Window;IIIIII)V
    .locals 0
    .param p1    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "INPUT_DEVICES",
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 p3, 0x2

    if-lt p1, p3, :cond_9

    const/4 p3, 0x6

    if-le p1, p3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 74
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    :cond_1
    if-eqz p5, :cond_2

    .line 80
    invoke-interface {p5}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result p3

    iget-object p4, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object p4

    invoke-interface {p4}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result p4

    if-eq p3, p4, :cond_2

    .line 82
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-interface {p5}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    :cond_2
    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 135
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    :pswitch_0
    const/4 p1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, p1, :cond_3

    .line 118
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 122
    :cond_3
    iget-object p3, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object p3

    if-ne p2, p1, :cond_4

    .line 125
    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result p1

    add-int/2addr p8, p1

    .line 126
    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result p1

    add-int/2addr p9, p1

    .line 132
    :cond_4
    invoke-virtual {p3, p8, p9}, Lcom/eltechs/axs/xserver/Pointer;->warpOnCoordinates(II)V

    goto/16 :goto_0

    .line 109
    :pswitch_1
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/Pointer;->isButtonValid(B)Z

    move-result p1

    if-nez p1, :cond_5

    .line 111
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonRelease(I)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/Pointer;->isButtonValid(B)Z

    move-result p1

    if-nez p1, :cond_6

    .line 104
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 106
    :cond_6
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonPress(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/KeyboardModel;->isKeycodeValid(B)Z

    move-result p1

    if-nez p1, :cond_7

    .line 97
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 99
    :cond_7
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V

    goto :goto_0

    .line 88
    :pswitch_4
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/KeyboardModel;->isKeycodeValid(B)Z

    move-result p1

    if-nez p1, :cond_8

    .line 90
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    .line 92
    :cond_8
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V

    :goto_0
    return-void

    .line 66
    :cond_9
    :goto_1
    new-instance p2, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p2, p1}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public GetVersion(Lcom/eltechs/axs/xconnectors/XResponse;BBS)V
    .locals 0
    .param p2    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance p2, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;)V

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
