.class public Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerHoMM2;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerHoMM2.java"


# static fields
.field private static final clickAlignThresholdInches:F = 0.3f

.field private static final doubleClickMaxDistance:F = 0.15f

.field private static final doubleClickMaxIntervalMs:I = 0x4b

.field private static final fingerAimingMaxMoveInches:F = 0.6f

.field private static final fingerSpeedCheckTimeMs:I = 0x190

.field private static final fingerStandingMaxMoveInches:F = 0.12f

.field private static final fingerTapMaxMoveInches:F = 0.2f

.field private static final fingerTapMaxTimeMs:I = 0x190

.field private static final maxTapTimeMs:I = 0x64

.field private static final mouseActionSleepMs:I = 0x32

.field private static final pixelsInScrollUnit:F = 66.0f

.field private static final pointerMarginXPixels:I = 0x32

.field private static final pointerOffsetAimInchesX:F = 0.0f

.field private static final pointerOffsetAimInchesY:F = -0.3f

.field private static final scrollPeriodMs:J = 0x96L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILjava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 50

    .line 110
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v11, v7, v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 113
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v8}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 115
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v12, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 118
    new-instance v13, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v13, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 121
    new-instance v14, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    move/from16 v0, p3

    int-to-float v9, v0

    const v0, 0x3df5c28f    # 0.12f

    mul-float v3, v0, v9

    const v0, 0x3f19999a    # 0.6f

    mul-float v4, v0, v9

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v5, v0, v9

    const/16 v2, 0x190

    const/high16 v6, 0x43c80000    # 400.0f

    move-object v0, v14

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 132
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;

    invoke-direct {v15, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 135
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 139
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-direct {v10, v11, v0, v8}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 143
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 151
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 153
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    const/16 v3, 0x32

    move-object/from16 v16, v10

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v4, v0, v1, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 161
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 164
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v2, v0, v10, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v18, v4

    .line 170
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    invoke-direct {v0, v4, v10, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v4, 0x3e99999a    # 0.3f

    mul-float v19, v4, v9

    move-object v4, v0

    move-object/from16 v0, v17

    move v10, v3

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v21, v5

    move-object v5, v8

    move-object/from16 v22, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v23, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 180
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 183
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    const/4 v6, 0x1

    invoke-direct {v2, v0, v6, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;

    .line 189
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v25

    .line 192
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getKeyboardReporter()Lcom/eltechs/axs/KeyEventReporter;

    move-result-object v28

    sget-object v29, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const/16 v26, 0x1

    const/16 v27, 0x32

    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v29}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;IILcom/eltechs/axs/KeyEventReporter;Lcom/eltechs/axs/KeyCodesX;)V

    const v0, 0x3e19999a    # 0.15f

    mul-float v10, v0, v9

    move-object/from16 v0, v23

    move/from16 v20, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v5, 0x4b

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    move-object/from16 v10, v22

    invoke-direct {v10, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 204
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v0, 0x64

    invoke-direct {v6, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 207
    new-instance v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v5, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 210
    new-instance v4, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 216
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v3, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 218
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v2, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 221
    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    move-object/from16 v30, v2

    .line 224
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    const/4 v2, 0x0

    mul-float/2addr v2, v9

    const v17, -0x41666666    # -0.3f

    mul-float v9, v9, v17

    invoke-direct {v0, v1, v2, v9}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    .line 229
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;

    invoke-direct {v9, v11, v8, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 232
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    move-object/from16 v31, v1

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    move-object/from16 v32, v2

    .line 240
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    move-object/from16 v33, v3

    .line 242
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 v34, v10

    const/4 v10, 0x3

    invoke-direct {v2, v3, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    invoke-direct {v0, v1, v2, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v17, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 249
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 252
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    move-object/from16 v35, v0

    .line 257
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    invoke-direct {v3, v0, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    move-object/from16 v18, v35

    move-object/from16 v0, v17

    move-object/from16 v36, v31

    move-object/from16 v38, v9

    move-object/from16 v37, v30

    move-object/from16 v9, v32

    move-object/from16 v39, v33

    move-object/from16 v40, v4

    move-object v4, v7

    move-object/from16 v41, v5

    move-object v5, v8

    move-object/from16 v42, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 266
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    .line 268
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    invoke-direct {v3, v0, v1, v8}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    const/16 v5, 0x4b

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    invoke-direct {v9, v11, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 278
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;

    .line 282
    invoke-virtual {v11}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getKeyboardReporter()Lcom/eltechs/axs/KeyEventReporter;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;-><init>(Lcom/eltechs/axs/KeyEventReporter;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    const v1, 0x3c783e10

    mul-float v3, v1, v0

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getViewToXServerTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v0

    mul-float v4, v1, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x32

    const-wide/16 v17, 0x96

    const/16 v19, 0x0

    move-object v0, v8

    move-object v1, v11

    move-object/from16 v45, v8

    move-object/from16 v44, v9

    move-object/from16 v43, v38

    move-wide/from16 v8, v17

    move/from16 v17, v10

    move-object/from16 v46, v13

    move-object/from16 v47, v15

    move-object/from16 v13, v16

    move/from16 v16, v20

    move-object/from16 v15, v34

    move/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollSync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;FFFZIJZ)V

    .line 292
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;

    invoke-direct {v0, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 293
    new-instance v1, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;

    invoke-direct {v1, v11}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 295
    new-instance v2, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v3, 0x10

    .line 297
    new-array v3, v3, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    aput-object v14, v3, v16

    const/4 v4, 0x2

    aput-object v13, v3, v4

    aput-object v15, v3, v17

    const/4 v4, 0x4

    aput-object v47, v3, v4

    const/4 v4, 0x5

    move-object/from16 v5, v42

    aput-object v5, v3, v4

    const/4 v4, 0x6

    move-object/from16 v6, v41

    aput-object v6, v3, v4

    const/4 v4, 0x7

    move-object/from16 v7, v40

    aput-object v7, v3, v4

    const/16 v4, 0x8

    move-object/from16 v8, v39

    aput-object v8, v3, v4

    const/16 v4, 0x9

    move-object/from16 v9, v37

    aput-object v9, v3, v4

    const/16 v4, 0xa

    move-object/from16 v10, v43

    aput-object v10, v3, v4

    const/16 v4, 0xb

    move-object/from16 v48, v11

    move-object/from16 v11, v44

    aput-object v11, v3, v4

    const/16 v4, 0xc

    move-object/from16 v49, v7

    move-object/from16 v7, v45

    aput-object v7, v3, v4

    const/16 v4, 0xd

    aput-object v0, v3, v4

    const/16 v4, 0xe

    aput-object v1, v3, v4

    const/16 v4, 0xf

    aput-object v46, v3, v4

    .line 298
    invoke-virtual {v2, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 317
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v4, v46

    invoke-virtual {v2, v4, v3, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 318
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v12, v3, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 319
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v14, v3, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 320
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v14, v3, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 321
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v10, v47

    invoke-virtual {v2, v14, v3, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 322
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v14, v3, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 323
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v14, v3, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 324
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v14, v3, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 325
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v10, v3, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 326
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v10, v3, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 327
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v5, v3, v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 328
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v5, v3, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 329
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v5, v3, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 330
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v6, v3, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 331
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v6, v3, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 332
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v5, v49

    invoke-virtual {v2, v6, v3, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 333
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v1, v3, v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 334
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v2, v0, v3, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 336
    invoke-virtual {v2, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 337
    invoke-virtual {v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 339
    invoke-virtual {v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v0, v48

    .line 340
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v0
.end method
