.class public Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerArcanum;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerArcanum.java"


# static fields
.field private static final clickAlignThresholdInches:F = 0.3f

.field private static final doubleClickMaxDistance:F = 0.15f

.field private static final doubleClickMaxIntervalMs:I = 0xc8

.field private static final fingerAimingMaxMoveInches:F = 0.12f

.field private static final fingerSpeedCheckTimeMs:I = 0x190

.field private static final fingerStandingMaxMoveInches:F = 0.12f

.field private static final fingerTapMaxMoveInches:F = 0.2f

.field private static final fingerTapMaxTimeMs:I = 0x190

.field private static final maxTapTimeMs:I = 0x12c

.field private static final mouseActionSleepMs:I = 0x32

.field private static final pixelsInScrollUnitX:F = 0.5f

.field private static final pixelsInScrollUnitY:F = 0.25f

.field private static final pointerMarginXPixels:I = 0x32

.field private static final scrollTimerPeriod:J = 0x15eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILjava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 46

    .line 107
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v7, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 110
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v10}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 112
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v11, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 115
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v12, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 118
    new-instance v13, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    move/from16 v0, p3

    int-to-float v14, v0

    const v0, 0x3df5c28f    # 0.12f

    mul-float v4, v0, v14

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v5, v0, v14

    const/16 v2, 0x190

    const/high16 v6, 0x43c80000    # 400.0f

    move-object v0, v13

    move-object v1, v9

    move v3, v4

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 129
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;

    invoke-direct {v15, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 132
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 136
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-direct {v8, v9, v0, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 140
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 148
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 151
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    const/16 v3, 0x32

    move-object/from16 v16, v8

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v4, v0, v1, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 159
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 162
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v2, v0, v8, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v18, v4

    .line 168
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    invoke-direct {v0, v4, v8, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v14

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move v8, v3

    move-object/from16 v3, v19

    move/from16 v21, v4

    move-object v4, v7

    move-object/from16 v22, v5

    move-object v5, v10

    move-object/from16 v23, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v19, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 178
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 181
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 187
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v4, v0, v3, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v0, 0x3e19999a    # 0.15f

    mul-float v6, v0, v14

    move-object/from16 v0, v19

    move-object v3, v4

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v5, 0xc8

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    move-object/from16 v7, v23

    invoke-direct {v7, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 200
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v0, 0x12c

    invoke-direct {v6, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 203
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v5, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 206
    new-instance v4, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 212
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v3, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 214
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->dummy:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    new-instance v8, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;

    .line 223
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v23

    .line 226
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getKeyboardReporter()Lcom/eltechs/axs/KeyEventReporter;

    move-result-object v26

    sget-object v27, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v24, 0x1

    const/16 v25, 0x32

    move-object/from16 v22, v8

    invoke-direct/range {v22 .. v27}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;IILcom/eltechs/axs/KeyEventReporter;Lcom/eltechs/axs/KeyCodesX;)V

    invoke-direct {v0, v1, v8, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    invoke-direct {v2, v9, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 233
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    move-object/from16 v28, v2

    .line 239
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;

    move-object/from16 v29, v3

    .line 242
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 v31, v4

    move-object/from16 v30, v7

    const/16 v4, 0x32

    const/4 v7, 0x1

    invoke-direct {v2, v3, v7, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v3, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerArcanum$1;

    invoke-direct {v3}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerArcanum$1;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    const/16 v17, 0x0

    move-object v0, v8

    move-object v2, v1

    move-object v1, v9

    move-object/from16 v3, v28

    move-object/from16 v33, v3

    move-object/from16 v32, v29

    move-object v3, v10

    move-object/from16 v34, v31

    move-object/from16 v35, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    .line 256
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 262
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    .line 266
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v3

    iget v3, v3, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 267
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    move-object/from16 v36, v8

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v3, v4}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v17, v14, v0

    const v3, 0x49742400    # 1000000.0f

    const v4, 0x49742400    # 1000000.0f

    const/16 v18, 0x1

    const/16 v19, 0x32

    const/16 v20, 0x1

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v37, v5

    move/from16 v5, v17

    move-object/from16 v38, v6

    move/from16 v6, v18

    move/from16 v17, v7

    move-object/from16 v39, v30

    move/from16 v7, v19

    move-object/from16 v40, v12

    move-object/from16 v42, v15

    move-object/from16 v12, v16

    move/from16 v16, v17

    move-object/from16 v41, v36

    move v15, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 278
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;

    invoke-direct {v0, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 279
    new-instance v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;

    invoke-direct {v1, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 281
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;

    move/from16 v4, v21

    float-to-double v3, v4

    invoke-direct {v2, v9, v3, v4, v15}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;DZ)V

    .line 289
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 296
    invoke-virtual {v9}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    const v6, -0x41333333    # -0.4f

    mul-float/2addr v14, v6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v14}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    invoke-direct {v3, v9, v10, v4}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 302
    new-instance v4, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v5, 0x11

    .line 305
    new-array v5, v5, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    aput-object v11, v5, v15

    aput-object v2, v5, v16

    const/4 v6, 0x2

    aput-object v13, v5, v6

    const/4 v6, 0x3

    aput-object v12, v5, v6

    const/4 v6, 0x4

    move-object/from16 v7, v39

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v42, v5, v6

    const/4 v6, 0x6

    move-object/from16 v8, v38

    aput-object v8, v5, v6

    const/4 v6, 0x7

    move-object/from16 v10, v35

    aput-object v10, v5, v6

    const/16 v6, 0x8

    move-object/from16 v14, v34

    aput-object v14, v5, v6

    const/16 v6, 0x9

    move-object/from16 v15, v32

    aput-object v15, v5, v6

    const/16 v6, 0xa

    move-object/from16 v43, v9

    move-object/from16 v9, v33

    aput-object v9, v5, v6

    const/16 v6, 0xb

    aput-object v3, v5, v6

    const/16 v6, 0xc

    move-object/from16 v44, v14

    move-object/from16 v14, v41

    aput-object v14, v5, v6

    const/16 v6, 0xd

    move-object/from16 v45, v15

    move-object/from16 v15, v37

    aput-object v15, v5, v6

    const/16 v6, 0xe

    aput-object v0, v5, v6

    const/16 v6, 0xf

    aput-object v1, v5, v6

    const/16 v6, 0x10

    aput-object v40, v5, v6

    .line 306
    invoke-virtual {v4, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 326
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v6, v40

    invoke-virtual {v4, v6, v5, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 327
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v11, v5, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 328
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v13, v5, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 329
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v13, v5, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 330
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v13, v5, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 331
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v13, v5, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 332
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v13, v5, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 333
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v13, v5, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 334
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->FAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v7, v42

    invoke-virtual {v4, v2, v5, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 335
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->NEAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v2, v5, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 336
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v7, v2, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 337
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v7, v2, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 338
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v8, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 339
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v8, v2, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 340
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v8, v2, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 341
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v45

    invoke-virtual {v4, v10, v2, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 342
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v10, v2, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 343
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v44

    invoke-virtual {v4, v10, v2, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 344
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v1, v2, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 345
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v4, v0, v2, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 347
    invoke-virtual {v4, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 348
    invoke-virtual {v4, v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 350
    invoke-virtual {v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v0, v43

    .line 351
    invoke-virtual {v0, v4}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v0
.end method
