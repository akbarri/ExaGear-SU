.class public Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "GraphicsContextManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public ChangeGC(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillRule;Lcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;)V
    .locals 28
    .param p1    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "mask"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FUNCTION"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "PLANE_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FOREGROUND"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKGROUND"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "LINE_WIDTH"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "LINE_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CAP_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "JOIN_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p11    # Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FILL_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p12    # Lcom/eltechs/axs/xserver/graphicsContext/FillRule;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FILL_RULE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p13    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "TILE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p14    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "STIPPLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "TILE_STIPPLE_X_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "TILE_STIPPLE_Y_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FONT"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p18    # Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "SUBWINDOW_MODE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "GRAPHICS_EXPOSURES"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p20    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CLIP_X_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CLIP_Y_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p22    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CLIP_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p23    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "DASH_OFFSET"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "DASHES"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p25    # Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "ARC_MODE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "GRAPHICS_CONTEXTS_MANAGER",
            "PIXMAPS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x38
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/GraphicsContext;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;",
            ">;",
            "Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;",
            "Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;",
            "Lcom/eltechs/axs/xserver/graphicsContext/FillRule;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 108
    iget-object v1, v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    invoke-interface/range {v2 .. v27}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->updateGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillRule;Lcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;)V

    return-void
.end method

.method public CreateGC(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;ILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillRule;Lcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;)V
    .locals 29
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
    .param p5    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "mask"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FUNCTION"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "PLANE_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FOREGROUND"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKGROUND"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "LINE_WIDTH"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p11    # Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "LINE_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CAP_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p13    # Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "JOIN_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p14    # Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FILL_STYLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p15    # Lcom/eltechs/axs/xserver/graphicsContext/FillRule;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FILL_RULE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p16    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "TILE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p17    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "STIPPLE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "TILE_STIPPLE_X_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "TILE_STIPPLE_Y_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "FONT"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p21    # Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "SUBWINDOW_MODE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "GRAPHICS_EXPOSURES"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p23    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CLIP_X_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CLIP_Y_ORIGIN"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p25    # Lcom/eltechs/axs/xserver/Pixmap;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CLIP_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p26    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "DASH_OFFSET"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p27    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "DASHES"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p28    # Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "ARC_MODE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "GRAPHICS_CONTEXTS_MANAGER",
            "DRAWABLES_MANAGER",
            "PIXMAPS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x37
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            "Lcom/eltechs/axs/xconnectors/XResponse;",
            "I",
            "Lcom/eltechs/axs/xserver/Drawable;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;",
            ">;",
            "Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;",
            "Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;",
            "Lcom/eltechs/axs/xserver/graphicsContext/FillRule;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move/from16 v0, p3

    move-object/from16 v1, p0

    .line 59
    iget-object v2, v1, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    move-result-object v3

    move-object/from16 v2, p4

    .line 61
    invoke-interface {v3, v0, v2}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->createGraphicsContext(ILcom/eltechs/axs/xserver/Drawable;)Lcom/eltechs/axs/xserver/GraphicsContext;

    move-result-object v4

    if-nez v4, :cond_0

    .line 64
    new-instance v2, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    invoke-direct {v2, v0}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw v2

    :cond_0
    move-object/from16 v0, p1

    .line 66
    invoke-virtual {v0, v4}, Lcom/eltechs/axs/xserver/client/XClient;->registerAsOwnerOfGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    .line 68
    invoke-interface/range {v3 .. v28}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->updateGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillRule;Lcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;)V

    return-void
.end method

.method public FreeGC(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/GraphicsContext;)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->removeGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    return-void
.end method

.method public SetClipRectangles(Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;Lcom/eltechs/axs/xserver/GraphicsContext;SSLjava/nio/ByteBuffer;)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/GraphicsContext;
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
    .param p5    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3b
    .end annotation

    return-void
.end method

.method public SetDashes(Lcom/eltechs/axs/xserver/GraphicsContext;SSLjava/nio/ByteBuffer;)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/xserver/GraphicsContext;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "GRAPHICS_CONTEXTS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3a
    .end annotation

    return-void
.end method
