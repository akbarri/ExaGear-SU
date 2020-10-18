.class public Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;
.super Ljava/lang/Object;
.source "TouchPadInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;


# static fields
.field public static final buttonSizeInches:F = 0.4f

.field private static final buttonSzNormalDisplayInches:F = 0.45f

.field private static final buttonSzSmallDisplayInches:F = 0.4f

.field private static final displaySizeThresholdInches:F = 5.0f


# instance fields
.field private buttonHeight:I

.field private buttonWidth:I

.field private final buttonWidthPixelsFixup:I

.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private isToolbarsVisible:Z

.field private leftToolbar:Landroid/view/View;

.field protected mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field protected mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private rightToolbar:Landroid/view/View;

.field private tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 50
    iput v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidthPixelsFixup:I

    .line 51
    new-instance v0, Lcom/eltechs/axs/gamesControls/TouchPadScreenControlsFactory;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/TouchPadScreenControlsFactory;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    return-void
.end method

.method private createLeftScrollViewWithButtons(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 174
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u2191"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u2193"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u2190"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "\u2192"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "A"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "B"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "C"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "D"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "E"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "G"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "H"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "I"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "J"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "K"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "L"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "M"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "N"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "O"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "P"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Q"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "R"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "S"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "T"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "U"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "V"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "W"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "X"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Y"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Z"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 4

    .line 153
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 154
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "SHIFT"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "CTRL"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_ALT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "ALT"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#292c33"

    .line 160
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 163
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createLeftScrollViewWithButtons(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 167
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :cond_0
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->leftToolbar:Landroid/view/View;

    return-object p2
.end method

.method private createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;
    .locals 8

    .line 133
    new-instance v7, Lcom/eltechs/axs/StateButton;

    new-instance v2, Lcom/eltechs/axs/ButtonEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    iget v4, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidth:I

    iget v5, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonHeight:I

    move-object v0, v7

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/StateButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventReporter;ZIILjava/lang/String;)V

    return-object v7
.end method

.method private createRightScrollViewWithButtons(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 225
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Esc"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Ren"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Spa"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Tab"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "Bap"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "1"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "2"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "3"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "4"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_5:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "5"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_6:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "6"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_7:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "7"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_8:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "8"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_9:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "9"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_0:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F1"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F2"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F3"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F4"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F5"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F6"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F7"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F8"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F9:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F9"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F10:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F10"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F11:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F11"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_F12:Lcom/eltechs/axs/KeyCodesX;

    const-string v1, "F12"

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createNormalButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 4

    .line 207
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 209
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#292c33"

    .line 211
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 214
    invoke-direct {p0, p1, v1}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createRightScrollViewWithButtons(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 216
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 218
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    :cond_0
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-object p2
.end method

.method private createStateButton(Landroid/app/Activity;Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Lcom/eltechs/axs/StateButton;
    .locals 8

    .line 139
    new-instance v7, Lcom/eltechs/axs/StateButton;

    new-instance v2, Lcom/eltechs/axs/ButtonEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/ButtonEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V

    iget v4, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidth:I

    iget v5, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonHeight:I

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/StateButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventReporter;ZIILjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 8

    .line 62
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    sget-object v2, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 64
    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 65
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 67
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 68
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_1
    const v2, 0x3ee66666    # 0.45f

    .line 69
    :goto_1
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidth:I

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonHeight:I

    .line 72
    iget v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonHeight:I

    iget v2, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidth:I

    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    iput v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonHeight:I

    .line 74
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v5, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v4, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;

    invoke-direct {v4}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;-><init>()V

    invoke-virtual {v4}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->isHorizontalStretchEnabled()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    const/4 v4, 0x5

    .line 84
    new-array v4, v4, [Lcom/eltechs/axs/widgets/actions/AbstractAction;

    new-instance v5, Lcom/eltechs/axs/activities/menus/ShowKeyboard;

    invoke-direct {v5}, Lcom/eltechs/axs/activities/menus/ShowKeyboard;-><init>()V

    aput-object v5, v4, v3

    new-instance v3, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;

    invoke-direct {v3}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;-><init>()V

    aput-object v3, v4, v1

    const/4 v3, 0x2

    new-instance v5, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;

    invoke-direct {v5}, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;-><init>()V

    aput-object v5, v4, v3

    new-instance v3, Lcom/eltechs/axs/activities/menus/ShowUsage;

    invoke-direct {v3}, Lcom/eltechs/axs/activities/menus/ShowUsage;-><init>()V

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v3, 0x4

    new-instance v6, Lcom/eltechs/axs/activities/menus/Quit;

    invoke-direct {v6}, Lcom/eltechs/axs/activities/menus/Quit;-><init>()V

    aput-object v6, v4, v3

    .line 85
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 84
    invoke-virtual {p1, v3}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V

    .line 93
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object p2

    .line 94
    invoke-virtual {p2, v1}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->setShowCursor(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance p2, Lcom/eltechs/axs/FloatButton;

    new-instance v1, Lcom/eltechs/axs/MouseButtonEventReporter;

    new-instance v2, Lcom/eltechs/axs/PointerEventReporter;

    iget-object v3, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {v2, v3}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    invoke-direct {v1, v2, v5}, Lcom/eltechs/axs/MouseButtonEventReporter;-><init>(Lcom/eltechs/axs/PointerEventReporter;I)V

    invoke-direct {p2, p1, v1}, Lcom/eltechs/axs/FloatButton;-><init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventListener;)V

    .line 102
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidth:I

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/FloatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x43960000    # 300.0f

    .line 103
    invoke-virtual {p2, p1}, Lcom/eltechs/axs/FloatButton;->setX(F)V

    .line 104
    invoke-virtual {p2, p1}, Lcom/eltechs/axs/FloatButton;->setY(F)V

    .line 105
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method createScrollView(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 3

    .line 145
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->buttonWidth:I

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string p1, "#292c33"

    .line 148
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 113
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->leftToolbar:Landroid/view/View;

    .line 114
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-void
.end method

.method public isSidePanelsVisible()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    return v0
.end method

.method public toggleSidePanelsVisibility()V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    .line 123
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->isToolbarsVisible:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
