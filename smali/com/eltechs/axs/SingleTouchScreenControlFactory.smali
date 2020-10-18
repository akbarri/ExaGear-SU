.class public Lcom/eltechs/axs/SingleTouchScreenControlFactory;
.super Ljava/lang/Object;
.source "SingleTouchScreenControlFactory.java"


# instance fields
.field private final viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/SingleTouchScreenControlFactory;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    return-void
.end method


# virtual methods
.method public createJoystickMovesToKeysAdapterArea(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFFFFLandroid/graphics/Bitmap;FFF[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 17

    .line 193
    new-instance v9, Lcom/eltechs/axs/KeyEventReporter;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    .line 194
    new-instance v10, Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    const/4 v8, 0x1

    move-object v0, v10

    move/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    move-object/from16 v5, p16

    move-object/from16 v6, p17

    move-object/from16 v7, p18

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;-><init>(FF[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;ZLcom/eltechs/axs/KeyEventReporter;)V

    .line 203
    new-instance v8, Lcom/eltechs/axs/JoystickVisualiser;

    const/4 v4, 0x1

    move-object v0, v8

    move/from16 v1, p9

    move-object/from16 v2, p10

    move/from16 v3, p11

    move/from16 v5, p12

    move/from16 v6, p13

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/eltechs/axs/JoystickVisualiser;-><init>(FLandroid/graphics/Bitmap;FZFFLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 204
    new-instance v0, Lcom/eltechs/axs/SingleTouchEventAdapter;

    invoke-direct {v0}, Lcom/eltechs/axs/SingleTouchEventAdapter;-><init>()V

    const/4 v1, 0x2

    .line 205
    new-array v1, v1, [Lcom/eltechs/axs/PointerEventListener;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v3, 0x1

    aput-object v8, v1, v3

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/SingleTouchEventAdapter;->addListener([Lcom/eltechs/axs/PointerEventListener;)V

    .line 206
    new-instance v1, Lcom/eltechs/axs/TouchArea;

    move-object v11, v1

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 208
    new-instance v0, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v4, v3, [Lcom/eltechs/axs/TouchArea;

    aput-object v1, v4, v2

    new-array v1, v3, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v8, v1, v2

    invoke-direct {v0, v4, v1}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v0
.end method

.method public createMovesToKeysAdapterArea(Lcom/eltechs/axs/xserver/ViewFacade;FFFFFF[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 11

    .line 136
    new-instance v9, Lcom/eltechs/axs/KeyEventReporter;

    move-object v0, p1

    invoke-direct {v9, v0}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    .line 137
    new-instance v10, Lcom/eltechs/axs/PointerMoveToKeyAdapter;

    const/4 v8, 0x0

    move-object v0, v10

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;-><init>(FF[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;ZLcom/eltechs/axs/KeyEventReporter;)V

    .line 147
    new-instance v5, Lcom/eltechs/axs/SingleTouchEventAdapter;

    invoke-direct {v5}, Lcom/eltechs/axs/SingleTouchEventAdapter;-><init>()V

    const/4 v6, 0x1

    .line 148
    new-array v0, v6, [Lcom/eltechs/axs/PointerEventListener;

    const/4 v7, 0x0

    aput-object v10, v0, v7

    invoke-virtual {v5, v0}, Lcom/eltechs/axs/SingleTouchEventAdapter;->addListener([Lcom/eltechs/axs/PointerEventListener;)V

    .line 149
    new-instance v8, Lcom/eltechs/axs/TouchArea;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 151
    new-instance v0, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v1, v6, [Lcom/eltechs/axs/TouchArea;

    aput-object v8, v1, v7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v0
.end method

.method public createRealPointerArea(Lcom/eltechs/axs/xserver/ViewFacade;FFFF)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 8

    .line 228
    new-instance p1, Lcom/eltechs/axs/PointerEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/SingleTouchScreenControlFactory;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {p1, v0}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    .line 229
    new-instance v0, Lcom/eltechs/axs/FingerTouchAdapter;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/FingerTouchAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    .line 230
    new-instance v6, Lcom/eltechs/axs/SingleTouchEventAdapter;

    invoke-direct {v6}, Lcom/eltechs/axs/SingleTouchEventAdapter;-><init>()V

    const/4 p1, 0x1

    .line 231
    new-array v1, p1, [Lcom/eltechs/axs/PointerEventListener;

    const/4 v7, 0x0

    aput-object v0, v1, v7

    invoke-virtual {v6, v1}, Lcom/eltechs/axs/SingleTouchEventAdapter;->addListener([Lcom/eltechs/axs/PointerEventListener;)V

    .line 232
    new-instance v0, Lcom/eltechs/axs/TouchArea;

    move-object v1, v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 234
    new-instance p2, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array p1, p1, [Lcom/eltechs/axs/TouchArea;

    aput-object v0, p1, v7

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object p2
.end method

.method public createSimplePointerArea(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFLandroid/graphics/Bitmap;FFFFIZZZ)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 17

    .line 57
    new-instance v1, Lcom/eltechs/axs/PointerEventReporter;

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/eltechs/axs/SingleTouchScreenControlFactory;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    .line 58
    new-instance v6, Lcom/eltechs/axs/FingerSweepAdapter;

    move-object v0, v6

    move/from16 v2, p12

    move/from16 v3, p13

    move/from16 v4, p14

    move/from16 v5, p15

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/FingerSweepAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;IZZZ)V

    .line 59
    new-instance v14, Lcom/eltechs/axs/SingleTouchEventAdapter;

    invoke-direct {v14}, Lcom/eltechs/axs/SingleTouchEventAdapter;-><init>()V

    const/4 v13, 0x1

    .line 60
    new-array v0, v13, [Lcom/eltechs/axs/PointerEventListener;

    const/4 v15, 0x0

    aput-object v6, v0, v15

    invoke-virtual {v14, v0}, Lcom/eltechs/axs/SingleTouchEventAdapter;->addListener([Lcom/eltechs/axs/PointerEventListener;)V

    const/16 v16, 0x0

    if-eqz p7, :cond_0

    .line 64
    new-instance v9, Lcom/eltechs/axs/JoystickVisualiser;

    const/4 v4, 0x1

    move-object v0, v9

    move/from16 v1, p9

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v5, p10

    move/from16 v6, p11

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/eltechs/axs/JoystickVisualiser;-><init>(FLandroid/graphics/Bitmap;FZFFLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 65
    new-array v0, v13, [Lcom/eltechs/axs/PointerEventListener;

    aput-object v9, v0, v15

    invoke-virtual {v14, v0}, Lcom/eltechs/axs/SingleTouchEventAdapter;->addListener([Lcom/eltechs/axs/PointerEventListener;)V

    move-object v0, v9

    goto :goto_0

    :cond_0
    move-object/from16 v0, v16

    .line 67
    :goto_0
    new-instance v1, Lcom/eltechs/axs/TouchArea;

    move-object v9, v1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move v2, v13

    move/from16 v13, p6

    invoke-direct/range {v9 .. v14}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 69
    new-instance v3, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v4, v2, [Lcom/eltechs/axs/TouchArea;

    aput-object v1, v4, v15

    if-nez p7, :cond_1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_1
    new-array v1, v2, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v0, v1, v15

    :goto_1
    invoke-direct {v3, v4, v1}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v3
.end method

.method public createSweepAndStrokeArea(Lcom/eltechs/axs/xserver/ViewFacade;FFFFDD)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 16

    .line 92
    new-instance v1, Lcom/eltechs/axs/PointerEventReporter;

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/eltechs/axs/SingleTouchScreenControlFactory;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    .line 93
    new-instance v9, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v9

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;ZIDD)V

    .line 94
    new-instance v11, Lcom/eltechs/axs/KeyEventReporter;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    .line 95
    new-instance v0, Lcom/eltechs/axs/StrokeToKeyAdapter;

    sget-object v12, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    sget-object v13, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    sget-object v14, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    sget-object v15, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/eltechs/axs/StrokeToKeyAdapter;-><init>(Lcom/eltechs/axs/KeyEventReporter;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;)V

    .line 96
    invoke-virtual {v9, v0}, Lcom/eltechs/axs/FingerSweepAndStrokeAdapter;->addStrokeListener(Lcom/eltechs/axs/StrokeEventListener;)V

    .line 97
    new-instance v6, Lcom/eltechs/axs/SingleTouchEventAdapter;

    invoke-direct {v6}, Lcom/eltechs/axs/SingleTouchEventAdapter;-><init>()V

    const/4 v0, 0x1

    .line 98
    new-array v1, v0, [Lcom/eltechs/axs/PointerEventListener;

    const/4 v7, 0x0

    aput-object v9, v1, v7

    invoke-virtual {v6, v1}, Lcom/eltechs/axs/SingleTouchEventAdapter;->addListener([Lcom/eltechs/axs/PointerEventListener;)V

    .line 99
    new-instance v9, Lcom/eltechs/axs/TouchArea;

    move-object v1, v9

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 101
    new-instance v1, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v0, v0, [Lcom/eltechs/axs/TouchArea;

    aput-object v9, v0, v7

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v1
.end method
