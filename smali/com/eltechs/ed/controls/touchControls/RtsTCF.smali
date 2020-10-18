.class public Lcom/eltechs/ed/controls/touchControls/RtsTCF;
.super Lcom/eltechs/ed/controls/touchControls/AbstractTCF;
.source "RtsTCF.java"


# static fields
.field private static final clickAlignThresholdInches:F = 0.15f

.field private static final doubleClickMaxDistanceInches:F = 0.15f

.field private static final doubleClickMaxIntervalMs:I = 0xc8

.field private static final fingerAimingMaxMoveDiagCoeff:F = 0.03f

.field private static final fingerStandingMaxMoveInches:F = 0.07f

.field private static final fingerToLongTimeMs:I = 0x64

.field private static final fingerToVeryLongTimeMs:I = 0x12c

.field private static final maxExtraTapTimeMs:I = 0x190

.field private static final mouseActionSleepMs:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/eltechs/ed/controls/touchControls/AbstractTCF;-><init>()V

    return-void
.end method


# virtual methods
.method public createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 33

    move-object/from16 v0, p0

    .line 76
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v10, v8, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 79
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v11}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 81
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v12, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 84
    new-instance v13, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v13, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 87
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 88
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 91
    new-instance v14, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    move/from16 v2, p4

    int-to-float v9, v2

    const v2, 0x3d8f5c29    # 0.07f

    mul-float v15, v2, v9

    int-to-float v1, v1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float v5, v1, v2

    const/16 v3, 0x64

    const/4 v7, 0x0

    move-object v1, v14

    move-object v2, v10

    move v4, v15

    move v6, v15

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 103
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 109
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 112
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    const/4 v6, 0x3

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v6, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v1, v2, v3, v11}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    invoke-direct {v7, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 121
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 129
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v6, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v17, v3

    .line 132
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 v18, v14

    const/4 v14, 0x1

    invoke-direct {v6, v3, v14, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v2, v1, v6, v11}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v19, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 140
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v6, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 143
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v6, v1, v14, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v20, v2

    .line 149
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2, v14, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v2, 0x3e19999a    # 0.15f

    mul-float v21, v2, v9

    move-object/from16 v22, v1

    move-object/from16 v1, v19

    move-object v2, v3

    move-object/from16 v23, v17

    move-object v3, v6

    move-object v6, v4

    move-object/from16 v4, v22

    move v14, v5

    move-object v5, v8

    move-object/from16 v24, v6

    move-object v6, v11

    move-object/from16 v25, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v16, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 159
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 162
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4, v14}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 168
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v5, v1, v4, v14}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object/from16 v1, v16

    move-object v4, v5

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v6, 0xc8

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    move-object/from16 v8, v24

    invoke-direct {v8, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 182
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 187
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    const/4 v3, 0x0

    mul-float/2addr v3, v9

    const v4, -0x41b33333    # -0.2f

    mul-float/2addr v4, v9

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 190
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v14}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v7, v10, v11, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMoveWithClick;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;)V

    .line 197
    new-instance v14, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 203
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v1

    new-instance v2, Lcom/eltechs/axs/geom/Rectangle;

    .line 204
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 205
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v5

    iget v5, v5, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v4, v5}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v3, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v1

    const v4, 0x49742400    # 1000000.0f

    const v5, 0x49742400    # 1000000.0f

    const/16 v16, 0x1

    const/16 v17, 0xf

    const/16 v19, 0x1

    move-object v1, v14

    move-object v2, v10

    move/from16 v20, v6

    move v6, v9

    move-object v9, v7

    move/from16 v7, v16

    move-object/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v14

    move-object v14, v9

    move/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 216
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    const/16 v3, 0x12c

    const/4 v7, 0x0

    move-object v1, v8

    move v4, v15

    move v5, v15

    move v6, v15

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 228
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 234
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 237
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    const/4 v7, 0x0

    invoke-direct {v3, v1, v2, v7}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v10

    move-object v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    .line 248
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 254
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 257
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    invoke-direct {v3, v1, v2, v7}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v1, v6

    move-object v2, v10

    move-object v4, v11

    move v11, v5

    move v5, v7

    move-object v7, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    .line 268
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v5, 0x190

    invoke-direct {v6, v10, v5}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 272
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    const v3, 0xf4240

    const v16, 0x49742400    # 1000000.0f

    move-object v1, v4

    move-object/from16 v28, v4

    move v4, v15

    move v11, v5

    move v5, v15

    move-object/from16 v29, v6

    move v6, v15

    move-object v15, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 284
    new-instance v1, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    new-instance v2, Lcom/eltechs/ed/controls/touchControls/RtsTCF$1;

    invoke-direct {v2, v0}, Lcom/eltechs/ed/controls/touchControls/RtsTCF$1;-><init>(Lcom/eltechs/ed/controls/touchControls/RtsTCF;)V

    invoke-direct {v1, v2}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 298
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;

    invoke-direct {v2, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 299
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;

    invoke-direct {v3, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 302
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v4, v10, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 306
    new-instance v5, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    new-instance v6, Lcom/eltechs/ed/controls/touchControls/RtsTCF$2;

    invoke-direct {v6, v0}, Lcom/eltechs/ed/controls/touchControls/RtsTCF$2;-><init>(Lcom/eltechs/ed/controls/touchControls/RtsTCF;)V

    invoke-direct {v5, v6}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 319
    new-instance v6, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v7, 0x11

    .line 321
    new-array v7, v7, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    aput-object v13, v7, v20

    const/4 v11, 0x1

    aput-object v12, v7, v11

    const/4 v11, 0x2

    aput-object v18, v7, v11

    move-object/from16 v11, v26

    const/16 v16, 0x3

    aput-object v11, v7, v16

    const/16 v16, 0x4

    aput-object v14, v7, v16

    const/16 v16, 0x5

    aput-object v27, v7, v16

    const/16 v16, 0x6

    aput-object v8, v7, v16

    const/16 v16, 0x7

    move-object/from16 v0, v25

    aput-object v0, v7, v16

    const/16 v16, 0x8

    aput-object v15, v7, v16

    const/16 v16, 0x9

    aput-object v9, v7, v16

    const/16 v16, 0xa

    move-object/from16 v30, v10

    move-object/from16 v10, v29

    aput-object v10, v7, v16

    const/16 v16, 0xb

    move-object/from16 v31, v9

    move-object/from16 v9, v28

    aput-object v9, v7, v16

    const/16 v16, 0xc

    aput-object v1, v7, v16

    const/16 v16, 0xd

    aput-object v2, v7, v16

    const/16 v16, 0xe

    aput-object v3, v7, v16

    const/16 v16, 0xf

    aput-object v4, v7, v16

    const/16 v16, 0x10

    aput-object v5, v7, v16

    .line 322
    invoke-virtual {v6, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 342
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v13, v7, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 343
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v32, v13

    move-object/from16 v13, v18

    invoke-virtual {v6, v12, v7, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 346
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v13, v7, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 347
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v13, v7, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 348
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v13, v7, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 349
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v11, v27

    invoke-virtual {v6, v13, v7, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 350
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v13, v7, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 351
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v13, v7, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 354
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v8, v7, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 355
    sget-object v7, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v8, v7, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 356
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v8, v0, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 357
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v8, v0, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 358
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v8, v0, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 359
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v8, v0, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 362
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v10, v0, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 363
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v10, v0, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 364
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v10, v0, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 367
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v2, v0, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 368
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v3, v0, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 371
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v9, v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 372
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v1, v31

    invoke-virtual {v6, v9, v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 373
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v9, v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 376
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v4, v0, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 377
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v6, v4, v0, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 379
    invoke-virtual {v6, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    move-object/from16 v0, v32

    .line 380
    invoke-virtual {v6, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 382
    invoke-virtual {v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v0, v30

    .line 383
    invoke-virtual {v0, v6}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v0
.end method
