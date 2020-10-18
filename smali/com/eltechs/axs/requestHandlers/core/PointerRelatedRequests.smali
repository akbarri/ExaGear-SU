.class public Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "PointerRelatedRequests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;)Lcom/eltechs/axs/xserver/XServer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;)Lcom/eltechs/axs/xserver/XServer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object p0
.end method


# virtual methods
.method public ChangePointerControl(Lcom/eltechs/axs/xserver/client/XClient;SSSZZ)V
    .locals 0
    .param p2    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x69
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    const/4 p1, -0x1

    if-ge p2, p1, :cond_0

    .line 206
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    .line 210
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, p3}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1

    :cond_1
    return-void
.end method

.method public GetPointerControl(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 2
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x6a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$2;-><init>(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public QueryPointer(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;)V
    .locals 4
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "INPUT_DEVICES",
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x26
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object p2

    .line 53
    new-instance v2, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Pointer;Lcom/eltechs/axs/geom/Point;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public WarpPointer(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSSS)V
    .locals 5
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p3    # S
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
    .param p6    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # S
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
        opcode = 0x29
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    if-eqz p1, :cond_8

    .line 82
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v1

    if-ltz p3, :cond_7

    if-ltz p4, :cond_7

    if-ltz p5, :cond_7

    if-gez p6, :cond_0

    goto :goto_5

    .line 93
    :cond_0
    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    if-gt p3, v2, :cond_6

    iget v2, v1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    if-le p4, v2, :cond_1

    goto :goto_4

    :cond_1
    if-eqz p6, :cond_3

    add-int v2, p4, p6

    .line 111
    iget v3, v1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    .line 113
    :cond_3
    :goto_0
    iget p6, v1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    sub-int/2addr p6, p4

    :goto_1
    if-eqz p5, :cond_5

    add-int v2, p3, p5

    .line 119
    iget v3, v1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    if-lt v2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 121
    :cond_5
    :goto_2
    iget p5, v1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    sub-int/2addr p5, p3

    .line 132
    :goto_3
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v1

    .line 133
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    .line 131
    invoke-static {p1, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object p1

    .line 136
    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 141
    iget p3, p1, Lcom/eltechs/axs/geom/Point;->x:I

    iget p1, p1, Lcom/eltechs/axs/geom/Point;->y:I

    invoke-virtual {v1, p3, p1}, Lcom/eltechs/axs/geom/Rectangle;->containsPoint(II)Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    :cond_6
    :goto_4
    return-void

    :cond_7
    :goto_5
    return-void

    :cond_8
    if-nez p2, :cond_9

    .line 155
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result p1

    add-int/2addr p1, p7

    .line 156
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result p2

    add-int/2addr p2, p8

    goto :goto_6

    .line 159
    :cond_9
    invoke-static {p2, p7, p8}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertWindowCoordsToRoot(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object p1

    .line 162
    iget p2, p1, Lcom/eltechs/axs/geom/Point;->x:I

    .line 163
    iget p1, p1, Lcom/eltechs/axs/geom/Point;->y:I

    move v4, p2

    move p2, p1

    move p1, v4

    .line 166
    :goto_6
    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/Pointer;->warpOnCoordinates(II)V

    return-void
.end method
