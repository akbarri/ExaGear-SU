.class public Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "DrawablesManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public GetGeometry(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Drawable;)V
    .locals 10
    .param p2    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER",
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    int-to-byte v0, v0

    .line 33
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v1

    int-to-short v7, v1

    .line 34
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v1

    int-to-short v8, v1

    .line 38
    iget-object v1, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result p2

    invoke-interface {v1, p2}, Lcom/eltechs/axs/xserver/WindowsManager;->getWindow(I)Lcom/eltechs/axs/xserver/Window;

    move-result-object p2

    .line 39
    iget-object v1, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v1

    .line 43
    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    int-to-short v2, v2

    .line 44
    iget v1, v1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    int-to-short v1, v1

    .line 46
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBorderWidth()I

    move-result p2

    int-to-short p2, p2

    move v9, p2

    move v6, v1

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    move v6, v5

    move v9, v6

    .line 50
    :goto_0
    new-instance p2, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;Lcom/eltechs/axs/xserver/Window;SSSSS)V

    invoke-virtual {p1, v0, p2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public QueryBestSize(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;Lcom/eltechs/axs/xserver/Drawable;SS)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x61
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance p2, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;

    invoke-direct {p2, p0, p4, p5}, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;-><init>(Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;SS)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
