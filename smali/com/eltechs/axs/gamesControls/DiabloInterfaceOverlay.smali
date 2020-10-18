.class public Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;
.super Ljava/lang/Object;
.source "DiabloInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;


# static fields
.field public static final buttonMaxSizeInches:F = 0.35f

.field private static final buttonSzNormalDisplayInches:F = 0.3f

.field private static final buttonSzSmallDisplayInches:F = 0.25f

.field private static final displaySizeThresholdInches:F = 6.0f


# instance fields
.field private buttonHeight:I

.field private buttonWidth:I

.field private final buttonWidthPixelsFixup:I

.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private isDisplayWide:Z

.field private isToolbarsVisible:Z

.field private final joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

.field private leftToolbar:Landroid/view/View;

.field protected mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field protected mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

.field private rightToolbar:Landroid/view/View;

.field private tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 57
    iput v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidthPixelsFixup:I

    .line 58
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    .line 59
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_OFF:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    .line 60
    new-instance v0, Lcom/eltechs/axs/gamesControls/DiabloTouchScreenControlsFactory;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    iget-object v2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/gamesControls/DiabloTouchScreenControlsFactory;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    return-void
.end method

.method private createLeftScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 220
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "SHIFT"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "CTRL"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "ALT"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "ESC"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u5168\u663e"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u5730\u56fe"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u56de\u57ce"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u56de\u8f66"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createLeftScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 231
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_INSERT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u5b54\u9501"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u56db\u9632"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u4ef7\u683c"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u5e95\u6750"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u4efb\u52a1"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u961f\u53cb"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u5c5e\u6027"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u6280\u80fd"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 5

    .line 195
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#292c33"

    .line 197
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 199
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 204
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createLeftScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 205
    iget-boolean v2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isDisplayWide:Z

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 209
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createLeftScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 212
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 213
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 215
    :cond_1
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->leftToolbar:Landroid/view/View;

    return-object p2
.end method

.method private createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)Lcom/eltechs/axs/StateButton;
    .locals 8

    .line 301
    new-instance v7, Lcom/eltechs/axs/StateButton;

    iget v4, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    iget v5, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, "\u5de6\u952e"

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/StateButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventReporter;ZIILjava/lang/String;)V

    .line 303
    new-instance p1, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;

    invoke-direct {p1, p0, p2}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;-><init>(Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V

    invoke-virtual {v7, p1}, Lcom/eltechs/axs/StateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance p1, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;

    invoke-direct {p1, p0, v7}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;-><init>(Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;Lcom/eltechs/axs/StateButton;)V

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->addListener(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;)V

    return-object v7
.end method

.method private createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;
    .locals 8

    .line 289
    new-instance v7, Lcom/eltechs/axs/StateButton;

    new-instance v2, Lcom/eltechs/axs/ButtonEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    iget v4, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    iget v5, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonHeight:I

    move-object v0, v7

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/StateButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventReporter;ZIILjava/lang/String;)V

    return-object v7
.end method

.method private createRightScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u4e3b\u526f"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u88c5\u5907"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u4f63\u5175"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "1"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "2"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "3"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "4"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRightScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 278
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F1"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F2"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F3"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F4"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F5"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F6"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F7"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F8"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 5

    .line 242
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#292c33"

    .line 244
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 246
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 251
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createRightScrollViewWithButtons1(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 252
    iget-boolean v2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isDisplayWide:Z

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 256
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createRightScrollViewWithButtons2(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 259
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 260
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 262
    :cond_1
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-object p2
.end method

.method private createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;
    .locals 8

    .line 295
    new-instance v7, Lcom/eltechs/axs/StateButton;

    new-instance v2, Lcom/eltechs/axs/ButtonEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    iget v4, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    iget v5, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonHeight:I

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/StateButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventReporter;ZIILjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 10

    .line 72
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    sget-object v2, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 74
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 75
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 78
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_1
    const v3, 0x3e99999a    # 0.3f

    .line 79
    :goto_1
    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    const v5, 0x3eb33333    # 0.35f

    .line 80
    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v5, v6

    .line 82
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    mul-int v7, v7, v8

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    div-int/2addr v7, v0

    sub-int/2addr v6, v7

    const/4 v0, 0x2

    div-int/2addr v6, v0

    iput v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    .line 83
    iget v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    div-int/2addr v6, v0

    if-le v6, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isDisplayWide:Z

    .line 84
    iget-boolean v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isDisplayWide:Z

    if-eqz v6, :cond_3

    .line 85
    iget v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    div-int/2addr v6, v0

    iput v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    .line 88
    :cond_3
    iget v6, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    if-ge v6, v3, :cond_4

    .line 89
    iput v3, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    .line 92
    :cond_4
    iget v3, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    if-le v3, v5, :cond_5

    .line 93
    iput v5, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    .line 95
    :cond_5
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonHeight:I

    .line 96
    iget v3, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonHeight:I

    iget v5, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    if-le v3, v5, :cond_6

    move v3, v5

    :cond_6
    iput v3, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonHeight:I

    .line 98
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v7, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v4, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v6, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;

    invoke-direct {v6}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;-><init>()V

    invoke-virtual {v6}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->isHorizontalStretchEnabled()Z

    move-result v6

    invoke-virtual {p2, v6}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    const/4 v6, 0x5

    .line 107
    new-array v6, v6, [Lcom/eltechs/axs/widgets/actions/AbstractAction;

    new-instance v7, Lcom/eltechs/axs/activities/menus/ShowKeyboard;

    invoke-direct {v7}, Lcom/eltechs/axs/activities/menus/ShowKeyboard;-><init>()V

    aput-object v7, v6, v4

    new-instance v4, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;-><init>()V

    aput-object v4, v6, v1

    new-instance v4, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;-><init>()V

    aput-object v4, v6, v0

    const/4 v0, 0x3

    new-instance v4, Lcom/eltechs/axs/activities/menus/ShowUsage;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/ShowUsage;-><init>()V

    aput-object v4, v6, v0

    const/4 v0, 0x4

    new-instance v4, Lcom/eltechs/axs/activities/menus/Quit;

    invoke-direct {v4}, Lcom/eltechs/axs/activities/menus/Quit;-><init>()V

    aput-object v4, v6, v0

    .line 108
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V

    .line 118
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object p2

    .line 119
    invoke-virtual {p2, v1}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->setShowCursor(Z)V

    .line 120
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance p2, Lcom/eltechs/axs/PointerEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {p2, v0}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    .line 124
    new-instance v0, Lcom/eltechs/axs/FloatJoyStickWidget;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    iget-object v4, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->joyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    invoke-direct {v0, p1, v1, p2, v4}, Lcom/eltechs/axs/FloatJoyStickWidget;-><init>(Landroid/content/Context;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/PointerEventReporter;Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;)V

    .line 130
    sget-object p2, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_MAIN:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/FloatJoyStickWidget;->setMode(Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;)V

    .line 131
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/FloatJoyStickWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p2, p2, v1

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/FloatJoyStickWidget;->setX(F)V

    .line 133
    iget p2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float p2, p2, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr p2, v5

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/FloatJoyStickWidget;->setY(F)V

    .line 134
    iget-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-virtual {p2, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->addListener(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;)V

    .line 135
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance p2, Lcom/eltechs/axs/FloatButton;

    new-instance v5, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;

    invoke-direct {v5, p0, v0}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1MouseButtonEventReporter2;-><init>(Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;Lcom/eltechs/axs/FloatJoyStickWidget;)V

    invoke-direct {p2, p1, v5}, Lcom/eltechs/axs/FloatButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventListener;)V

    .line 155
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/FloatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v4

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/FloatButton;->setX(F)V

    .line 157
    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/FloatButton;->setY(F)V

    .line 159
    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 3

    .line 187
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->buttonWidth:I

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string p1, "#292c33"

    .line 190
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 167
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->leftToolbar:Landroid/view/View;

    .line 168
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-void
.end method

.method public isSidePanelsVisible()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    return v0
.end method

.method public toggleSidePanelsVisibility()V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    .line 177
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->isToolbarsVisible:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
