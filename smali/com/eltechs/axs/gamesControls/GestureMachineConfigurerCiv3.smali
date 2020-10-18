.class public Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerCiv3.java"


# static fields
.field private static final clickAlignThresholdInches:F = 0.3f

.field private static final doubleClickMaxDistance:F = 0.15f

.field private static final doubleClickMaxIntervalMs:I = 0xc8

.field private static final fingerAimingMaxMoveInches:F = 0.2f

.field private static final fingerSpeedCheckTimeMs:I = 0xc8

.field private static final fingerStandingMaxMoveInches:F = 0.12f

.field private static final fingerTapMaxMoveInches:F = 0.2f

.field private static final fingerTapMaxTimeMs:I = 0x64

.field private static final maxTapTimeMs:I = 0x64

.field private static final mouseActionSleepMs:I = 0x32

.field private static final pointerMarginXPixels:I = 0x32

.field private static final pointerOffsetAimInchesX:F = 0.0f

.field private static final pointerOffsetAimInchesY:F = 0.0f

.field private static final scrollThresholdPixels:F = 100.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Ljava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 48

    move-object/from16 v0, p4

    .line 108
    new-instance v10, Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v10, v8, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V

    .line 111
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-direct {v9}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;-><init>()V

    .line 113
    new-instance v11, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;

    invoke-direct {v11, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 116
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;

    invoke-direct {v12, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 119
    new-instance v13, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;

    move/from16 v1, p3

    int-to-float v14, v1

    const v1, 0x3df5c28f    # 0.12f

    mul-float v4, v1, v14

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v6, v1, v14

    const/16 v3, 0xc8

    const/high16 v7, 0x42c80000    # 100.0f

    move-object v1, v13

    move-object v2, v10

    move v5, v6

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;IFFFF)V

    .line 130
    new-instance v15, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;

    invoke-direct {v15, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 133
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 137
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    invoke-direct {v7, v10, v1, v9}, Lcom/eltechs/axs/GestureStateMachine/GestureStateMouseWarpToFingerLastCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    .line 141
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 149
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 152
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 v16, v12

    const/4 v12, 0x1

    move-object/from16 v17, v15

    const/16 v15, 0x32

    invoke-direct {v2, v3, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v4, v1, v2, v9}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v18, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 160
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 163
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v19, v4

    .line 169
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    invoke-direct {v1, v4, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v4, 0x3e99999a    # 0.3f

    mul-float v20, v4, v14

    move-object v4, v1

    move-object/from16 v1, v18

    move-object/from16 v21, v5

    move-object v5, v8

    move-object/from16 v22, v6

    move-object v6, v9

    move-object/from16 v23, v7

    move/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v24, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 179
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 182
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 188
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v4, v1, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    const v1, 0x3e19999a    # 0.15f

    mul-float v25, v1, v14

    move-object/from16 v1, v24

    move/from16 v7, v25

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v6, 0xc8

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move-object/from16 v4, v24

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    move-object/from16 v7, v22

    invoke-direct {v7, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 201
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;

    new-instance v5, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 209
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 212
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    const/4 v12, 0x3

    invoke-direct {v2, v3, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    invoke-direct {v4, v1, v2, v9}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V

    new-instance v18, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 220
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 223
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    move-object/from16 v26, v4

    .line 229
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v4

    invoke-direct {v1, v4, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object v4, v1

    move-object/from16 v1, v18

    move-object/from16 v19, v26

    move-object/from16 v27, v5

    move-object v5, v8

    move-object/from16 v28, v6

    move-object v6, v9

    move-object/from16 v29, v7

    move/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    new-instance v20, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;

    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 239
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 242
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v3, v1, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    new-instance v4, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;

    .line 248
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v1

    invoke-direct {v4, v1, v12, v15}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;II)V

    move-object/from16 v1, v20

    move/from16 v7, v25

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/GuestAppActionAdapters/AlignedMouseClickAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/GestureStateMachine/PointerContext;F)V

    const/16 v6, 0xc8

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V

    move-object/from16 v15, v28

    invoke-direct {v15, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V

    .line 261
    new-instance v8, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    const/16 v1, 0x64

    invoke-direct {v8, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 264
    new-instance v7, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;

    invoke-direct {v7, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;I)V

    .line 268
    new-instance v6, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    move-object/from16 v1, p5

    invoke-direct {v6, v1}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 274
    new-instance v5, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;

    new-instance v1, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$1;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$1;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    invoke-direct {v5, v1}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateRunRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 286
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v4, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 288
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {v3, v10, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureStatePressKey;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/KeyCodesX;)V

    .line 291
    new-instance v2, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;

    .line 294
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    const/4 v12, 0x0

    mul-float/2addr v12, v14

    invoke-direct {v2, v1, v12, v12}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V

    .line 299
    new-instance v12, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;

    new-instance v14, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;

    new-instance v1, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;

    move-object/from16 v30, v3

    .line 308
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v3

    move-object/from16 v31, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    new-instance v3, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$2;

    invoke-direct {v3, v10}, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$2;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    invoke-direct {v14, v2, v1, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;-><init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v1, v12

    move-object v4, v2

    move-object v2, v10

    move-object/from16 v32, v30

    move-object v3, v14

    move-object/from16 v33, v4

    move-object/from16 v14, v31

    move-object v4, v9

    move-object/from16 v34, v5

    move/from16 v5, v18

    move-object/from16 v35, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseDragAndDrop;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;ZF)V

    .line 324
    new-instance v6, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;

    move-object/from16 v1, v33

    invoke-direct {v6, v10, v9, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToMouseMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/PointerContext;Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;)V

    .line 332
    new-instance v9, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;

    new-instance v3, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;

    .line 338
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v1

    new-instance v2, Lcom/eltechs/axs/geom/Rectangle;

    .line 342
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v4

    iget v4, v4, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 343
    invoke-virtual {v10}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v5

    iget v5, v5, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    move-object/from16 v36, v8

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8, v4, v5}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v3, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V

    const v4, 0x4b189680    # 1.0E7f

    const v5, 0x4b189680    # 1.0E7f

    const/high16 v18, 0x42c80000    # 100.0f

    const/16 v19, 0x1

    const/16 v20, 0x32

    const/16 v21, 0x1

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v37, v6

    move/from16 v6, v18

    move-object/from16 v38, v7

    move/from16 v7, v19

    move/from16 v18, v8

    move-object/from16 v39, v36

    move/from16 v8, v20

    move-object/from16 v40, v9

    move/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;FFFZIZ)V

    .line 354
    new-instance v1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;

    invoke-direct {v1, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 355
    new-instance v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;

    invoke-direct {v2, v10}, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 357
    new-instance v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;

    invoke-direct {v3, v10, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    .line 358
    new-instance v4, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;

    invoke-direct {v4, v10, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    .line 360
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;-><init>()V

    const/16 v5, 0x14

    .line 362
    new-array v5, v5, [Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    aput-object v11, v5, v18

    const/4 v6, 0x1

    aput-object v13, v5, v6

    const/4 v6, 0x2

    move-object/from16 v7, v23

    aput-object v7, v5, v6

    move-object/from16 v6, v29

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const/4 v8, 0x4

    aput-object v15, v5, v8

    const/4 v8, 0x5

    aput-object v17, v5, v8

    const/4 v8, 0x6

    move-object/from16 v9, v39

    aput-object v9, v5, v8

    const/4 v8, 0x7

    move-object/from16 v41, v10

    move-object/from16 v10, v38

    aput-object v10, v5, v8

    const/16 v8, 0x8

    move-object/from16 v42, v10

    move-object/from16 v10, v35

    aput-object v10, v5, v8

    const/16 v8, 0x9

    aput-object v14, v5, v8

    const/16 v8, 0xa

    move-object/from16 v43, v10

    move-object/from16 v10, v32

    aput-object v10, v5, v8

    const/16 v8, 0xb

    aput-object v12, v5, v8

    const/16 v8, 0xc

    move-object/from16 v44, v14

    move-object/from16 v14, v37

    aput-object v14, v5, v8

    const/16 v8, 0xd

    move-object/from16 v45, v10

    move-object/from16 v10, v40

    aput-object v10, v5, v8

    const/16 v8, 0xe

    aput-object v1, v5, v8

    const/16 v8, 0xf

    aput-object v2, v5, v8

    const/16 v8, 0x10

    aput-object v3, v5, v8

    const/16 v8, 0x11

    aput-object v4, v5, v8

    const/16 v8, 0x12

    move-object/from16 v46, v2

    move-object/from16 v2, v34

    aput-object v2, v5, v8

    const/16 v8, 0x13

    aput-object v16, v5, v8

    .line 363
    invoke-virtual {v0, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 386
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitForNeutral;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v8, v16

    invoke-virtual {v0, v8, v5, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 387
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateNeutral;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v11, v5, v13}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 389
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_STANDING:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v5, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 390
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v5, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 391
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_FLASHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v47, v8

    move-object/from16 v8, v17

    invoke-virtual {v0, v13, v5, v8}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 392
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v5, v9}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 393
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_TAPPED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v5, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 394
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMeasureSpeed;->FINGER_WALKED_AND_GONE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v13, v5, v7}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 396
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v5, v12}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 397
    sget-object v5, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v5, v14}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 399
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v4, v3, v6}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 400
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckMouseMode;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v4, v3, v15}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 401
    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureStateClickToFingerFirstCoords;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v15, v3, v2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 403
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_OFF:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v8, v2, v10}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 404
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckIfZoomed;->ZOOM_ON:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v8, v2, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 405
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v3, v42

    invoke-virtual {v0, v9, v2, v3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 406
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v4, v45

    invoke-virtual {v0, v9, v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 407
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v4, v46

    invoke-virtual {v0, v9, v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 408
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v5, v44

    invoke-virtual {v0, v3, v2, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 409
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->TIMED_OUT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v3, v2, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 410
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureStateWaitFingersNumberChangeWithTimeout;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    move-object/from16 v5, v43

    invoke-virtual {v0, v3, v2, v5}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 411
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState2FingersToZoom;->FINGER_RELEASED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v4, v2, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 412
    sget-object v2, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToZoomMove;->FINGER_TOUCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0, v1, v2, v4}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 414
    invoke-virtual {v0, v11}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    move-object/from16 v1, v47

    .line 415
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 417
    invoke-virtual {v0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->configurationCompleted()V

    move-object/from16 v1, v41

    .line 418
    invoke-virtual {v1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    return-object v1
.end method
