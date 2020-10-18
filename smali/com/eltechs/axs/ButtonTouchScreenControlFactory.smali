.class public Lcom/eltechs/axs/ButtonTouchScreenControlFactory;
.super Ljava/lang/Object;
.source "ButtonTouchScreenControlFactory.java"


# instance fields
.field private final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/ButtonTouchScreenControlFactory;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    return-void
.end method


# virtual methods
.method public createMouseButton(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFLandroid/graphics/Bitmap;FI)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 11

    .line 212
    new-instance v0, Lcom/eltechs/axs/PointerEventReporter;

    move-object v1, p0

    iget-object v2, v1, Lcom/eltechs/axs/ButtonTouchScreenControlFactory;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {v0, v2}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    .line 213
    new-instance v2, Lcom/eltechs/axs/MouseButtonEventReporter;

    move/from16 v3, p9

    invoke-direct {v2, v0, v3}, Lcom/eltechs/axs/MouseButtonEventReporter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    .line 214
    new-instance v0, Lcom/eltechs/axs/ButtonVisualizer;

    move-object v3, v0

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/eltechs/axs/ButtonVisualizer;-><init>(FFFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 216
    new-instance v8, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;

    invoke-direct {v8}, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;-><init>()V

    const/4 v3, 0x2

    .line 217
    new-array v3, v3, [Lcom/eltechs/axs/ButtonEventListener;

    const/4 v9, 0x0

    aput-object v2, v3, v9

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {v8, v3}, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;->addListener([Lcom/eltechs/axs/ButtonEventListener;)V

    .line 218
    new-instance v10, Lcom/eltechs/axs/TouchArea;

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 220
    new-instance v3, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v4, v2, [Lcom/eltechs/axs/TouchArea;

    aput-object v10, v4, v9

    new-array v2, v2, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v0, v2, v9

    invoke-direct {v3, v4, v2}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v3
.end method

.method public varargs createPressOnlyButton(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFLandroid/graphics/Bitmap;F[Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 10

    .line 108
    new-instance v0, Lcom/eltechs/axs/ButtonEventReporter;

    move-object v1, p2

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    .line 109
    new-instance v9, Lcom/eltechs/axs/ButtonVisualizer;

    move-object v1, v9

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/eltechs/axs/ButtonVisualizer;-><init>(FFFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 111
    new-instance v6, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;

    invoke-direct {v6}, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;-><init>()V

    const/4 v1, 0x2

    .line 112
    new-array v1, v1, [Lcom/eltechs/axs/ButtonEventListener;

    const/4 v7, 0x0

    aput-object v0, v1, v7

    const/4 v0, 0x1

    aput-object v9, v1, v0

    invoke-virtual {v6, v1}, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;->addListener([Lcom/eltechs/axs/ButtonEventListener;)V

    .line 113
    new-instance v8, Lcom/eltechs/axs/TouchArea;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 115
    new-instance v1, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v2, v0, [Lcom/eltechs/axs/TouchArea;

    aput-object v8, v2, v7

    new-array v0, v0, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v9, v0, v7

    invoke-direct {v1, v2, v0}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v1
.end method

.method public varargs createPressOnlyCircleButton(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFLandroid/graphics/Bitmap;F[Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 10

    .line 177
    new-instance v7, Lcom/eltechs/axs/ButtonEventReporter;

    move-object v0, p2

    move-object/from16 v1, p8

    invoke-direct {v7, v0, v1}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    .line 178
    new-instance v8, Lcom/eltechs/axs/CircleButtonVisualizer;

    move-object v0, v8

    move v1, p3

    move v2, p4

    move v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/CircleButtonVisualizer;-><init>(FFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 179
    new-instance v5, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;

    invoke-direct {v5}, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;-><init>()V

    const/4 v0, 0x2

    .line 180
    new-array v0, v0, [Lcom/eltechs/axs/ButtonEventListener;

    const/4 v6, 0x0

    aput-object v7, v0, v6

    const/4 v7, 0x1

    aput-object v8, v0, v7

    invoke-virtual {v5, v0}, Lcom/eltechs/axs/ButtonPressOnlyEventAdapter;->addListener([Lcom/eltechs/axs/ButtonEventListener;)V

    .line 181
    new-instance v9, Lcom/eltechs/axs/TouchArea;

    sub-float v1, p3, p5

    sub-float v2, p4, p5

    add-float v3, p3, p5

    add-float v4, p4, p5

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 187
    new-instance v0, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v1, v7, [Lcom/eltechs/axs/TouchArea;

    aput-object v9, v1, v6

    new-array v2, v7, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v8, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v0
.end method

.method public varargs createSimpleButton(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFLandroid/graphics/Bitmap;F[Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 10

    .line 48
    new-instance v0, Lcom/eltechs/axs/ButtonEventReporter;

    move-object v1, p2

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    .line 49
    new-instance v9, Lcom/eltechs/axs/ButtonVisualizer;

    move-object v1, v9

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/eltechs/axs/ButtonVisualizer;-><init>(FFFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 50
    new-instance v6, Lcom/eltechs/axs/ButtonTouchEventAdapter;

    invoke-direct {v6}, Lcom/eltechs/axs/ButtonTouchEventAdapter;-><init>()V

    const/4 v1, 0x2

    .line 51
    new-array v1, v1, [Lcom/eltechs/axs/ButtonEventListener;

    const/4 v7, 0x0

    aput-object v0, v1, v7

    const/4 v0, 0x1

    aput-object v9, v1, v0

    invoke-virtual {v6, v1}, Lcom/eltechs/axs/ButtonTouchEventAdapter;->addListener([Lcom/eltechs/axs/ButtonEventListener;)V

    .line 52
    new-instance v8, Lcom/eltechs/axs/TouchArea;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 54
    new-instance v1, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v2, v0, [Lcom/eltechs/axs/TouchArea;

    aput-object v8, v2, v7

    new-array v0, v0, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v9, v0, v7

    invoke-direct {v1, v2, v0}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v1
.end method

.method public varargs createSimpleCircleButton(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFLandroid/graphics/Bitmap;F[Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 10

    .line 77
    new-instance v7, Lcom/eltechs/axs/ButtonEventReporter;

    move-object v0, p2

    move-object/from16 v1, p8

    invoke-direct {v7, v0, v1}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    .line 78
    new-instance v8, Lcom/eltechs/axs/CircleButtonVisualizer;

    move-object v0, v8

    move v1, p3

    move v2, p4

    move v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/CircleButtonVisualizer;-><init>(FFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 79
    new-instance v5, Lcom/eltechs/axs/ButtonTouchEventAdapter;

    invoke-direct {v5}, Lcom/eltechs/axs/ButtonTouchEventAdapter;-><init>()V

    const/4 v0, 0x2

    .line 80
    new-array v0, v0, [Lcom/eltechs/axs/ButtonEventListener;

    const/4 v6, 0x0

    aput-object v7, v0, v6

    const/4 v7, 0x1

    aput-object v8, v0, v7

    invoke-virtual {v5, v0}, Lcom/eltechs/axs/ButtonTouchEventAdapter;->addListener([Lcom/eltechs/axs/ButtonEventListener;)V

    .line 81
    new-instance v9, Lcom/eltechs/axs/TouchArea;

    sub-float v1, p3, p5

    sub-float v2, p4, p5

    add-float v3, p3, p5

    add-float v4, p4, p5

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 83
    new-instance v0, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v1, v7, [Lcom/eltechs/axs/TouchArea;

    aput-object v9, v1, v6

    new-array v2, v7, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v8, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v0
.end method

.method public varargs createTapSquareButton(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFLandroid/graphics/Bitmap;F[Lcom/eltechs/axs/KeyCodesX;)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 11

    .line 141
    new-instance v0, Lcom/eltechs/axs/ButtonTapEventReporter;

    move-object v1, p2

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/ButtonTapEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    const/4 v1, 0x0

    if-eqz p7, :cond_0

    .line 146
    new-instance v10, Lcom/eltechs/axs/ButtonVisualizer;

    move-object v2, v10

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/eltechs/axs/ButtonVisualizer;-><init>(FFFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    goto :goto_0

    :cond_0
    move-object v10, v1

    .line 150
    :goto_0
    new-instance v7, Lcom/eltechs/axs/ButtonTapAdapter;

    invoke-direct {v7}, Lcom/eltechs/axs/ButtonTapAdapter;-><init>()V

    .line 151
    invoke-virtual {v7, v0}, Lcom/eltechs/axs/ButtonTapAdapter;->addListener(Lcom/eltechs/axs/ButtonTapEventListener;)V

    .line 152
    new-instance v0, Lcom/eltechs/axs/TouchArea;

    move-object v2, v0

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 154
    new-instance v2, Lcom/eltechs/axs/SimpleTouchScreenControl;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/eltechs/axs/TouchArea;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v3, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v10, v1, v5

    :goto_1
    invoke-direct {v2, v4, v1}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v2
.end method
