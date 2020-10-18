.class public Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "CursorManipulationRequests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public CreateCursor(Lcom/eltechs/axs/xserver/client/XClient;ILcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;IIIIIIII)V
    .locals 10
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/NewXId;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
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
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p12    # I
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
            "CURSORS_MANAGER",
            "PIXMAPS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x5d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 38
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Pixmap;->getBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 42
    invoke-interface {p4}, Lcom/eltechs/axs/xserver/Pixmap;->getBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    .line 44
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 45
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 46
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v1

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 48
    :cond_0
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    .line 52
    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v1

    move/from16 v3, p11

    if-gt v3, v1, :cond_4

    .line 53
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v0

    move/from16 v4, p12

    if-le v4, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 58
    iget-object v1, v0, Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v7

    move-object v1, v7

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 59
    invoke-interface/range {v1 .. v6}, Lcom/eltechs/axs/xserver/CursorsManager;->createCursor(IIILcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;)Lcom/eltechs/axs/xserver/Cursor;

    move-result-object v1

    if-nez v1, :cond_3

    .line 63
    new-instance v1, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    move v2, p2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw v1

    :cond_3
    move-object v2, v7

    move-object v3, v1

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 66
    invoke-interface/range {v2 .. v9}, Lcom/eltechs/axs/xserver/CursorsManager;->recolorCursor(Lcom/eltechs/axs/xserver/Cursor;IIIIII)V

    move-object v2, p1

    .line 69
    invoke-virtual {v2, v1}, Lcom/eltechs/axs/xserver/client/XClient;->registerAsOwnerOfCursor(Lcom/eltechs/axs/xserver/Cursor;)V

    return-void

    :cond_4
    :goto_0
    move-object v0, p0

    .line 55
    new-instance v1, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v1}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v1
.end method

.method public CreateGlyphCursor(Lcom/eltechs/axs/xserver/client/XClient;ILjava/lang/Integer;Ljava/lang/Integer;IIIIIIII)V
    .locals 11
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/NewXId;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
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
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p12    # I
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
            "CURSORS_MANAGER",
            "PIXMAPS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x5e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move v0, p2

    move-object v1, p0

    .line 87
    iget-object v2, v1, Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v3

    .line 88
    invoke-interface {v3, v0}, Lcom/eltechs/axs/xserver/CursorsManager;->createFakeCursor(I)Lcom/eltechs/axs/xserver/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    invoke-direct {v2, v0}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw v2

    :cond_0
    move-object v4, v2

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    .line 95
    invoke-interface/range {v3 .. v10}, Lcom/eltechs/axs/xserver/CursorsManager;->recolorCursor(Lcom/eltechs/axs/xserver/Cursor;IIIIII)V

    move-object v0, p1

    .line 98
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/client/XClient;->registerAsOwnerOfCursor(Lcom/eltechs/axs/xserver/Cursor;)V

    return-void
.end method

.method public FreeCursor(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/Cursor;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "CURSORS_MANAGER",
            "PIXMAPS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x5f
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/CursorsManager;->freeCursor(Lcom/eltechs/axs/xserver/Cursor;)V

    return-void
.end method

.method public RecolorCursor(Lcom/eltechs/axs/xserver/Cursor;IIIIII)V
    .locals 10
    .param p1    # Lcom/eltechs/axs/xserver/Cursor;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Unsigned;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
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
    .param p7    # I
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
            "CURSORS_MANAGER",
            "DRAWABLES_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x60
    .end annotation

    move-object v0, p0

    .line 119
    iget-object v1, v0, Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/eltechs/axs/xserver/CursorsManager;->recolorCursor(Lcom/eltechs/axs/xserver/Cursor;IIIIII)V

    return-void
.end method
