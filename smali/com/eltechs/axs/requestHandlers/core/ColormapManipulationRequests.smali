.class public Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "ColormapManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public CreateColormap(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;ILcom/eltechs/axs/xserver/Window;I)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/NewXId;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "COLORMAPS_MANAGER",
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x4e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 34
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getColormapsManager()Lcom/eltechs/axs/xserver/ColormapsManager;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/eltechs/axs/xserver/ColormapsManager;->createColormap(I)Lcom/eltechs/axs/xserver/Colormap;

    move-result-object p2

    if-nez p2, :cond_0

    .line 38
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    invoke-direct {p1, p3}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw p1

    .line 41
    :cond_0
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/client/XClient;->registerAsOwnerOfColormap(Lcom/eltechs/axs/xserver/Colormap;)V

    return-void
.end method

.method public FreeColormap(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Colormap;)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/Colormap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "COLORMAPS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x4f
    .end annotation

    .line 49
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getColormapsManager()Lcom/eltechs/axs/xserver/ColormapsManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/ColormapsManager;->freeColormap(Lcom/eltechs/axs/xserver/Colormap;)V

    return-void
.end method
