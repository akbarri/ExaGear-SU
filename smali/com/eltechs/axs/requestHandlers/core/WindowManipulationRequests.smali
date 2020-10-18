.class public Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "WindowManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method

.method private willBeInConflict(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Z
    .locals 1

    .line 539
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p3}, Lcom/eltechs/axs/xserver/WindowListenersList;->isListenerInstalledForEvent(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v0

    .line 541
    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/xserver/client/XClient;->isInterestedIn(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public ChangeProperty(Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;BBBBILjava/nio/ByteBuffer;)V
    .locals 8
    .param p1    # Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "ATOMS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move v0, p5

    move/from16 v1, p9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    .line 340
    new-instance v1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw v1

    :cond_0
    const/4 v0, 0x4

    mul-int/2addr v0, v1

    .line 323
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 325
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadLength;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadLength;-><init>()V

    throw v0

    .line 328
    :cond_1
    new-array v0, v1, [I

    :goto_0
    if-ge v3, v1, :cond_2

    .line 331
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_2
    sget-object v1, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_INTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    mul-int/2addr v0, v1

    .line 306
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 308
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadLength;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadLength;-><init>()V

    throw v0

    .line 311
    :cond_4
    new-array v0, v1, [S

    :goto_1
    if-ge v3, v1, :cond_5

    .line 314
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    :cond_5
    sget-object v1, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_SHORTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    goto :goto_2

    .line 292
    :cond_6
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-le v1, v0, :cond_7

    .line 294
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadLength;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadLength;-><init>()V

    throw v0

    .line 297
    :cond_7
    new-array v0, v1, [B

    move-object/from16 v1, p10

    .line 298
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 301
    sget-object v1, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_BYTES:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    :goto_2
    move-object v7, v0

    move-object v5, v1

    .line 343
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    move-result-object v2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/eltechs/axs/xserver/WindowPropertiesManager;->modifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 346
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method public ChangeWindowAttributes(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/BitGravity;Lcom/eltechs/axs/xserver/WinGravity;Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 17
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "mask"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKGROUND_PIXMAP"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKGROUND_PIXEL"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BORDER_PIXMAP"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BORDER_PIXEL"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # Lcom/eltechs/axs/xserver/BitGravity;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BIT_GRAVITY"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p9    # Lcom/eltechs/axs/xserver/WinGravity;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "WIN_GRAVITY"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p10    # Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKING_STORE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKING_PLANES"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKING_PIXEL"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "OVERRIDE_REDIRECT"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "SAVE_UNDER"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p15    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "EVENT_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p16    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "DO_NOT_PROPAGATE_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "COLORMAP"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p18    # Lcom/eltechs/axs/xserver/Cursor;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CURSOR"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "COLORMAPS_MANAGER",
            "CURSORS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/BitGravity;",
            "Lcom/eltechs/axs/xserver/WinGravity;",
            "Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p15

    if-eqz v3, :cond_4

    .line 503
    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v3, v4}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v0, v1, v2, v4}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->willBeInConflict(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->RESIZE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    .line 504
    invoke-virtual {v3, v4}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->RESIZE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v0, v1, v2, v4}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->willBeInConflict(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    .line 505
    invoke-virtual {v3, v4}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v0, v1, v2, v4}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->willBeInConflict(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 507
    :cond_2
    new-instance v1, Lcom/eltechs/axs/proto/input/errors/BadAccess;

    invoke-direct {v1}, Lcom/eltechs/axs/proto/input/errors/BadAccess;-><init>()V

    throw v1

    .line 509
    :cond_3
    invoke-virtual {v1, v2, v3}, Lcom/eltechs/axs/xserver/client/XClient;->installEventListener(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 512
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v3

    move-object v4, v15

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p16

    move-object v1, v15

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    invoke-virtual/range {v3 .. v16}, Lcom/eltechs/axs/xserver/WindowAttributes;->update(Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/BitGravity;Lcom/eltechs/axs/xserver/WinGravity;Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Cursor;)V

    .line 516
    sget-object v3, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {v1, v3}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    .line 521
    sget-object v3, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {v1, v3}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    invoke-interface/range {p2 .. p2}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xserver/Painter;->fillWithColor(I)V

    :cond_5
    return-void
.end method

.method public ConfigureWindow(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;SLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Short;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/StackMode;)V
    .locals 16
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "mask"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p3    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "X"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "Y"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "WIDTH"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "HEIGHT"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p8    # Ljava/lang/Short;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BORDER_WIDTH"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p9    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "SIBLING"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p10    # Lcom/eltechs/axs/xserver/StackMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "STACK_MODE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/ConfigureWindowParts;",
            ">;S",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/StackMode;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v12, p0

    .line 103
    iget-object v0, v12, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v7

    .line 104
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v13

    .line 105
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v0

    if-nez p4, :cond_1

    .line 109
    iget v1, v0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p4

    :goto_0
    if-nez p5, :cond_2

    .line 113
    iget v1, v0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object/from16 v3, p5

    :goto_1
    if-nez p6, :cond_3

    .line 117
    iget v1, v0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object/from16 v4, p6

    :goto_2
    if-nez p7, :cond_4

    .line 121
    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p7

    .line 124
    :goto_3
    invoke-interface {v13}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v1

    sget-object v5, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v5}, Lcom/eltechs/axs/xserver/WindowListenersList;->isListenerInstalledForEvent(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p8, :cond_5

    .line 128
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Short;->shortValue()S

    move-result v1

    :goto_4
    move v8, v1

    goto :goto_5

    .line 129
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBorderWidth()I

    move-result v1

    goto :goto_4

    .line 130
    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->getPrevSibling(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    .line 131
    new-instance v14, Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 135
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 136
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object v0, v14

    move-object v1, v13

    move-object v2, v10

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v15

    move-object/from16 v9, p10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;IIIIILcom/eltechs/axs/xserver/StackMode;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 141
    invoke-interface {v13}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v0, v14, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    return-void

    .line 145
    :cond_6
    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->X:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    invoke-virtual {v11, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->Y:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 146
    invoke-virtual {v11, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 147
    invoke-virtual {v11, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->HEIGHT:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 148
    invoke-virtual {v11, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v7

    move-object v1, v10

    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/WindowsManager;->changeRelativeWindowGeometry(Lcom/eltechs/axs/xserver/Window;IIII)V

    :cond_8
    if-eqz p8, :cond_9

    .line 155
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(S)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->setBorderWidth(I)V

    .line 158
    :cond_9
    sget-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->STACK_MODE:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    invoke-virtual {v11, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    .line 160
    invoke-interface {v7, v10, v0, v1}, Lcom/eltechs/axs/xserver/WindowsManager;->changeWindowZOrder(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/StackMode;)V

    .line 163
    :cond_a
    invoke-interface {v13}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->getPrevSibling(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v11

    .line 164
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v14

    .line 165
    new-instance v15, Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    iget v4, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v5, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v6, v14, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v7, v14, Lcom/eltechs/axs/geom/Rectangle;->height:I

    .line 172
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBorderWidth()I

    move-result v8

    .line 173
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v9

    move-object v0, v15

    move-object v1, v10

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;IIIIIZ)V

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v0, v15, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 175
    new-instance v15, Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    iget v4, v14, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v5, v14, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v6, v14, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget v7, v14, Lcom/eltechs/axs/geom/Rectangle;->height:I

    .line 182
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBorderWidth()I

    move-result v8

    .line 183
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v9

    move-object v0, v15

    move-object v1, v13

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;IIIIIZ)V

    .line 184
    invoke-interface {v13}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v0, v15, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    return-void
.end method

.method public CreateWindow(Lcom/eltechs/axs/xserver/client/XClient;BILcom/eltechs/axs/xserver/Window;IIIIILcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;Lcom/eltechs/axs/xserver/impl/drawables/Visual;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/BitGravity;Lcom/eltechs/axs/xserver/WinGravity;Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 25
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
    .param p4    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
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
    .param p10    # Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p11    # Lcom/eltechs/axs/xserver/impl/drawables/Visual;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p12    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "mask"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKGROUND_PIXMAP"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKGROUND_PIXEL"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BORDER_PIXMAP"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BORDER_PIXEL"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p17    # Lcom/eltechs/axs/xserver/BitGravity;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BIT_GRAVITY"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p18    # Lcom/eltechs/axs/xserver/WinGravity;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "WIN_GRAVITY"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p19    # Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKING_STORE"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p20    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKING_PLANES"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "BACKING_PIXEL"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "OVERRIDE_REDIRECT"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "SAVE_UNDER"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x4
        .end annotation
    .end param
    .param p24    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "EVENT_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p25    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "DO_NOT_PROPAGATE_MASK"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p26    # Ljava/lang/Integer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "COLORMAP"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p27    # Lcom/eltechs/axs/xserver/Cursor;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Optional;
            bit = "CURSOR"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "DRAWABLES_MANAGER",
            "INPUT_DEVICES",
            "COLORMAPS_MANAGER",
            "CURSORS_MANAGER",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            "BI",
            "Lcom/eltechs/axs/xserver/Window;",
            "IIIII",
            "Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/BitGravity;",
            "Lcom/eltechs/axs/xserver/WinGravity;",
            "Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v15, p12

    if-nez p24, :cond_0

    .line 395
    const-class v1, Lcom/eltechs/axs/xserver/EventName;

    invoke-static {v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v1

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p24

    .line 398
    :goto_0
    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$2;->$SwitchMap$com$eltechs$axs$requestHandlers$core$WindowManipulationRequests$WindowClass:[I

    invoke-virtual/range {p10 .. p10}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v0, "Unsupported value %s of WindowClass."

    .line 431
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p10, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void

    :pswitch_0
    move/from16 v0, p2

    move v8, v3

    goto :goto_3

    .line 416
    :pswitch_1
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    .line 422
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    move/from16 v0, p2

    :goto_1
    move v8, v2

    goto :goto_3

    .line 401
    :pswitch_2
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v1

    if-nez p2, :cond_3

    .line 404
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_2

    :cond_3
    move/from16 v0, p2

    :goto_2
    move v8, v1

    :goto_3
    if-eqz v8, :cond_6

    if-nez p11, :cond_4

    .line 439
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v1, p11

    .line 442
    :goto_4
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v2

    int-to-byte v2, v2

    if-eq v0, v2, :cond_5

    .line 444
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw v0

    :cond_5
    move-object/from16 v14, p0

    move-object v7, v1

    goto :goto_5

    :cond_6
    move-object/from16 v14, p0

    move-object/from16 v7, p11

    .line 448
    :goto_5
    iget-object v0, v14, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object v9, v10

    invoke-interface/range {v0 .. v9}, Lcom/eltechs/axs/xserver/WindowsManager;->createWindow(ILcom/eltechs/axs/xserver/Window;IIIILcom/eltechs/axs/xserver/impl/drawables/Visual;ZLcom/eltechs/axs/xserver/client/XClient;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_7

    .line 451
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw v0

    .line 454
    :cond_7
    invoke-virtual {v10, v0, v11}, Lcom/eltechs/axs/xserver/client/XClient;->installEventListener(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 456
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v11

    move/from16 v1, p9

    .line 457
    invoke-virtual {v11, v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->setBorderWidth(I)V

    move-object v12, v15

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object v1, v15

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move-object/from16 v19, p21

    move-object/from16 v20, p22

    move-object/from16 v21, p23

    move-object/from16 v22, p25

    move-object/from16 v23, p26

    move-object/from16 v24, p27

    .line 458
    invoke-virtual/range {v11 .. v24}, Lcom/eltechs/axs/xserver/WindowAttributes;->update(Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/BitGravity;Lcom/eltechs/axs/xserver/WinGravity;Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Cursor;)V

    .line 462
    sget-object v2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    .line 467
    sget-object v2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 469
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v1

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xserver/Painter;->fillWithColor(I)V

    .line 472
    :cond_8
    invoke-virtual {v10, v0}, Lcom/eltechs/axs/xserver/client/XClient;->registerAsOwnerOfWindow(Lcom/eltechs/axs/xserver/Window;)V

    .line 474
    invoke-interface/range {p4 .. p4}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v1

    new-instance v2, Lcom/eltechs/axs/xserver/events/CreateNotify;

    move-object/from16 v3, p4

    invoke-direct {v2, v3, v0}, Lcom/eltechs/axs/xserver/events/CreateNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2, v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public DeleteProperty(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "ATOMS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/WindowPropertiesManager;->deleteProperty(Lcom/eltechs/axs/xserver/Atom;)V

    return-void
.end method

.method public DestroySubwindows(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "DRAWABLES_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x5
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->destroySubwindows(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public DestroyWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "DRAWABLES_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x4
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->destroyWindow(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public GetProperty(Lcom/eltechs/axs/xconnectors/XResponse;ZLcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;II)V
    .locals 17
    .param p2    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Lcom/eltechs/axs/xserver/Atom;
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
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "ATOMS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    .line 197
    invoke-interface/range {p3 .. p3}, Lcom/eltechs/axs/xserver/Window;->getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/eltechs/axs/xserver/WindowPropertiesManager;->getProperty(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/WindowProperty;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v4, :cond_0

    .line 204
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v8, v1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    return-void

    .line 208
    :cond_0
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getType()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v9

    .line 209
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;

    move-result-object v10

    invoke-virtual {v10}, Lcom/eltechs/axs/xserver/WindowProperty$Format;->getFormatValue()B

    move-result v10

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v9, v2}, Lcom/eltechs/axs/xserver/Atom;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getSizeInBytes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v10, v1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0xc

    .line 223
    new-array v2, v2, [B

    .line 224
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getSizeInBytes()I

    move-result v11

    mul-int/lit8 v12, v3, 0x4

    sub-int v13, v11, v12

    int-to-long v13, v13

    const/4 v15, 0x4

    mul-int v5, v15, p7

    .line 227
    invoke-static {v5}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(I)J

    move-result-wide v7

    .line 228
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const-wide/16 v13, 0x0

    cmp-long v5, v7, v13

    if-gez v5, :cond_2

    .line 231
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {v0, v3}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw v0

    :cond_2
    long-to-int v3, v7

    add-int v5, v12, v3

    sub-int/2addr v11, v5

    const/16 v5, 0x8

    const/4 v7, 0x5

    if-eq v10, v5, :cond_5

    const/16 v5, 0x10

    if-eq v10, v5, :cond_4

    const/16 v5, 0x20

    if-eq v10, v5, :cond_3

    const-string v0, "Strange format value (%d) in GetProperty method."

    .line 257
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 251
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getValues()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 252
    div-int/2addr v3, v15

    new-array v8, v3, [I

    .line 253
    div-int/2addr v12, v15

    invoke-static {v4, v12, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    array-length v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object v2, v3, v4

    aput-object v8, v3, v15

    invoke-virtual {v0, v10, v3}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_4
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getValues()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    .line 245
    div-int/lit8 v5, v3, 0x2

    new-array v8, v5, [S

    .line 246
    invoke-static {v3}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result v3

    new-array v3, v3, [B

    const/4 v13, 0x2

    .line 247
    div-int/2addr v12, v13

    const/4 v14, 0x0

    invoke-static {v4, v12, v8, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x6

    .line 248
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    array-length v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x3

    aput-object v2, v4, v5

    aput-object v8, v4, v15

    aput-object v3, v4, v7

    invoke-virtual {v0, v10, v4}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :cond_5
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowProperty;->getValues()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 239
    invoke-static {v3}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result v5

    add-int/2addr v5, v3

    new-array v5, v5, [B

    const/4 v8, 0x0

    .line 240
    invoke-static {v4, v12, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    array-length v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v2, v3, v4

    aput-object v5, v3, v15

    invoke-virtual {v0, v10, v3}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_6

    if-nez v11, :cond_6

    .line 264
    invoke-interface/range {p3 .. p3}, Lcom/eltechs/axs/xserver/Window;->getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/WindowPropertiesManager;->deleteProperty(Lcom/eltechs/axs/xserver/Atom;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public GetWindowAttributes(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;)V
    .locals 7
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    .line 555
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 556
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 559
    :goto_0
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBackingStore()Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    .line 560
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 561
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getWindowClass()Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->ordinal()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 562
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBitGravity()Lcom/eltechs/axs/xserver/BitGravity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/BitGravity;->ordinal()I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x3

    .line 563
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getWinGravity()Lcom/eltechs/axs/xserver/WinGravity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/WinGravity;->ordinal()I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x4

    .line 564
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBackingPlanes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x5

    .line 565
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBackingPixel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x6

    .line 566
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isSaveUnder()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x7

    .line 567
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x8

    .line 568
    invoke-static {p3}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getWindowMapState(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x9

    .line 569
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0xa

    .line 570
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0xb

    .line 571
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/WindowListenersList;->calculateAllEventsMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0xc

    .line 572
    invoke-virtual {p1, p3}, Lcom/eltechs/axs/xserver/client/XClient;->getEventMask(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/16 p1, 0xd

    .line 573
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p3

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result p3

    int-to-short p3, p3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    aput-object p3, v4, p1

    .line 559
    invoke-virtual {p2, v3, v4}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method

.method public MapSubwindows(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES",
            "KEYBOARD_MODEL_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x9
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->mapSubwindows(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public MapWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES",
            "KEYBOARD_MODEL_MANAGER",
            "ATOMS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x8
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->mapWindow(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public ReparentWindow(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;II)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x7
    .end annotation

    .line 613
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 617
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->remove(Lcom/eltechs/axs/xserver/Window;)V

    :cond_0
    const/4 p1, 0x0

    .line 620
    invoke-interface {p2, p1}, Lcom/eltechs/axs/xserver/Window;->setParent(Lcom/eltechs/axs/xserver/Window;)V

    .line 621
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->add(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public TranslateCoordinates(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;II)V
    .locals 0
    .param p2    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Signed;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x28
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 584
    invoke-static {p2, p4, p5}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertWindowCoordsToRoot(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object p2

    .line 585
    iget p4, p2, Lcom/eltechs/axs/geom/Point;->x:I

    iget p5, p2, Lcom/eltechs/axs/geom/Point;->y:I

    invoke-static {p3, p4, p5}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object p4

    .line 586
    iget p5, p2, Lcom/eltechs/axs/geom/Point;->x:I

    iget p2, p2, Lcom/eltechs/axs/geom/Point;->y:I

    invoke-static {p3, p5, p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;

    move-result-object p2

    .line 588
    new-instance p3, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;

    invoke-direct {p3, p0, p2, p4}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/geom/Point;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public UnmapSubwindows(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES",
            "KEYBOARD_MODEL_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0xb
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->unmapSubwindows(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public UnmapWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1
    .param p1    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES",
            "KEYBOARD_MODEL_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0xa
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->unmapWindow(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method
