.class public Lcom/eltechs/axs/requestHandlers/core/PixmapManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "PixmapManipulationRequests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public CreatePixmap(Lcom/eltechs/axs/xserver/client/XClient;BILcom/eltechs/axs/xserver/Drawable;II)V
    .locals 6
    .param p2    # B
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
    .param p4    # Lcom/eltechs/axs/xserver/Drawable;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "PIXMAPS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x35
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 38
    invoke-interface {p4}, Lcom/eltechs/axs/xserver/Drawable;->getRoot()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    .line 39
    iget-object p4, p0, Lcom/eltechs/axs/requestHandlers/core/PixmapManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object v0

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/DrawablesManager;->createDrawable(ILcom/eltechs/axs/xserver/Window;IIB)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 42
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    invoke-direct {p1, p3}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw p1

    .line 45
    :cond_0
    iget-object p4, p0, Lcom/eltechs/axs/requestHandlers/core/PixmapManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p4}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/eltechs/axs/xserver/PixmapsManager;->createPixmap(Lcom/eltechs/axs/xserver/Drawable;)Lcom/eltechs/axs/xserver/Pixmap;

    move-result-object p2

    const-string p4, "Id %d approved by the drawables manager appears to be already used for a pixmap."

    const/4 p5, 0x1

    .line 46
    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, p6

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/client/XClient;->registerAsOwnerOfPixmap(Lcom/eltechs/axs/xserver/Pixmap;)V

    return-void
.end method

.method public FreePixmap(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Pixmap;)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "PIXMAPS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x36
    .end annotation

    .line 55
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/PixmapManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/PixmapsManager;->freePixmap(Lcom/eltechs/axs/xserver/Pixmap;)V

    return-void
.end method
