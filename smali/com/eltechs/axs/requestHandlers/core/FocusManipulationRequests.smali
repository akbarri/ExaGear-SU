.class public Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "FocusManipulationRequests.java"


# instance fields
.field private final FOCUS_WINDOW_NONE:I

.field private final FOCUS_WINDOW_POINTER_ROOT:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->FOCUS_WINDOW_NONE:I

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->FOCUS_WINDOW_POINTER_ROOT:I

    return-void
.end method


# virtual methods
.method public GetInputFocus(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 3
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x2b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    .line 45
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusReversionPolicy()Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    new-instance v2, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests$1;

    invoke-direct {v2, p0, v1}, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;I)V

    invoke-virtual {p1, v0, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public SetInputFocus(Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;II)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x2a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/errors/BadValue;,
            Lcom/eltechs/axs/proto/input/errors/BadWindow;
        }
    .end annotation

    .line 74
    iget-object p3, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    packed-switch p2, :pswitch_data_0

    .line 87
    iget-object p3, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/eltechs/axs/xserver/WindowsManager;->getWindow(I)Lcom/eltechs/axs/xserver/Window;

    move-result-object p3

    if-nez p3, :cond_0

    .line 90
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadWindow;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadWindow;-><init>(I)V

    throw p1

    .line 84
    :pswitch_0
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 95
    :goto_0
    iget-object p3, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lcom/eltechs/axs/xserver/FocusManager;->setFocus(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
