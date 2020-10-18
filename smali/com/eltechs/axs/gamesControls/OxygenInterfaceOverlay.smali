.class public Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;
.super Ljava/lang/Object;
.source "OxygenInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;


# static fields
.field public static final buttonSizeInches:F = 0.4f

.field private static final buttonSzNormalDisplayInches:F = 0.4f

.field private static final buttonSzSmallDisplayInches:F = 0.3f

.field private static final displaySizeThresholdInches:F = 5.0f


# instance fields
.field private final buttonWidthPixelsFixup:I

.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private isToolbarsVisible:Z

.field private leftToolbar:Landroid/view/View;

.field private rightToolbar:Landroid/view/View;

.field private tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 36
    iput v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->buttonWidthPixelsFixup:I

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    .line 47
    new-instance v0, Lcom/eltechs/axs/gamesControls/OxygenTouchScreenControlsFactory;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/OxygenTouchScreenControlsFactory;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    return-void
.end method

.method private static createAltButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;
    .locals 3

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eltechs/axs/R$string;->civ3_alt_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eltechs/axs/R$string;->civ3_alt_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x32

    .line 151
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setWidth(I)V

    .line 152
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 153
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 155
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setHeight(I)V

    .line 156
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMaxHeight(I)V

    .line 157
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$7;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$7;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$8;

    invoke-direct {p0, v2, v1, v0}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$8;-><init>(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->addKeyboardModifiersChangeListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V

    return-object v2
.end method

.method private static createCtrlButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;
    .locals 3

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eltechs/axs/R$string;->civ3_ctrl_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eltechs/axs/R$string;->civ3_ctrl_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x32

    .line 151
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setWidth(I)V

    .line 152
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 153
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 155
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setHeight(I)V

    .line 156
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMaxHeight(I)V

    .line 157
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$5;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$5;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$6;

    invoke-direct {p0, v2, v1, v0}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$6;-><init>(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->addKeyboardModifiersChangeListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V

    return-object v2
.end method

.method private static createLeftScrollViewWithButtons(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/ScrollView;
    .locals 5

    .line 217
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 223
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "\u2191"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "\u2193"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "\u2190"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "A"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "B"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "C"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "D"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "E"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "G"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "H"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "I"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "J"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "K"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "L"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "M"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "N"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "O"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "P"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Q"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "R"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "S"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "T"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "U"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "V"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "W"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "X"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Y"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Z"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 5

    .line 189
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 195
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 197
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p2

    .line 200
    invoke-static {p1, p2, v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createRunButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    invoke-static {p1, p2, v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createCtrlButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    invoke-static {p1, p2, v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createAltButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-static {p1, p2, v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLeftScrollViewWithButtons(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 203
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    :cond_0
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->leftToolbar:Landroid/view/View;

    return-object v0
.end method

.method private static createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;
    .locals 1

    .line 334
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 p3, 0x32

    .line 336
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setWidth(I)V

    .line 337
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 338
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 340
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setHeight(I)V

    .line 341
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 342
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setMaxHeight(I)V

    .line 344
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-static {v0, p2, p1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->setHandlerToButton(Landroid/widget/Button;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/xserver/ViewFacade;)V

    return-object v0
.end method

.method private static createRightScrollViewWithButtons(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/ScrollView;
    .locals 5

    .line 279
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 280
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Esc"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Ren"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Spa"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Tab"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "Bap"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "\u2192"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "1"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "2"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "3"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "4"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_5:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "5"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_6:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "6"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_7:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "7"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_8:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "8"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_9:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "9"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_0:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "0"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F1"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F2"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F3"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F4"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F5"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F6"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F7"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F8"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F9:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F9"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F10:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F10"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F11:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F11"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_F12:Lcom/eltechs/axs/KeyCodesX;

    const-string v3, "F12"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLetterButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 5

    .line 251
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isDisplaySmall(Landroid/util/DisplayMetrics;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const v2, 0x3ecccccd    # 0.4f

    .line 257
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 260
    invoke-static {v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isDisplaySmall(Landroid/util/DisplayMetrics;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1e

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v1, v2

    invoke-static {p1, p2, v1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createSyncButton(Landroid/app/Activity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createRightScrollViewWithButtons(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-boolean p1, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    if-nez p1, :cond_2

    const/16 p1, 0x8

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    :cond_2
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-object v0
.end method

.method private static createRunButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;
    .locals 3

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eltechs/axs/R$string;->mm_run_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eltechs/axs/R$string;->mm_run_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x32

    .line 151
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setWidth(I)V

    .line 152
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 153
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 155
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setHeight(I)V

    .line 156
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMaxHeight(I)V

    .line 157
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$2;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$2;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$3;

    invoke-direct {p0, v2, v1, v0}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$3;-><init>(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->addKeyboardModifiersChangeListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V

    return-object v2
.end method

.method private static createSyncButton(Landroid/app/Activity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;I)Landroid/widget/Button;
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eltechs/axs/R$string;->fal_sync:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x32

    .line 135
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setWidth(I)V

    .line 136
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 137
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 139
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setHeight(I)V

    .line 140
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMaxHeight(I)V

    .line 141
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$4;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$4;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private static isDisplaySmall(Landroid/util/DisplayMetrics;)Z
    .locals 1

    .line 55
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x40a00000    # 5.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setHandlerToButton(Landroid/widget/Button;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 1

    .line 312
    new-instance v0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$1;

    invoke-direct {v0, p2, p1}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay$1;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 7

    .line 66
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    sget-object v2, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 69
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createLeftToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v3, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->createRightToolbar(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v3, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;

    invoke-direct {v3}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;-><init>()V

    .line 79
    invoke-virtual {v3}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->isHorizontalStretchEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    const/4 p2, 0x5

    .line 81
    new-array p2, p2, [Lcom/eltechs/axs/widgets/actions/AbstractAction;

    new-instance v3, Lcom/eltechs/axs/activities/menus/ShowKeyboard;

    invoke-direct {v3}, Lcom/eltechs/axs/activities/menus/ShowKeyboard;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;

    invoke-direct {v2}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;

    invoke-direct {v1}, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;-><init>()V

    const/4 v2, 0x2

    aput-object v1, p2, v2

    new-instance v1, Lcom/eltechs/axs/activities/menus/ShowUsage;

    invoke-direct {v1}, Lcom/eltechs/axs/activities/menus/ShowUsage;-><init>()V

    const/4 v2, 0x3

    aput-object v1, p2, v2

    new-instance v1, Lcom/eltechs/axs/activities/menus/Quit;

    invoke-direct {v1}, Lcom/eltechs/axs/activities/menus/Quit;-><init>()V

    const/4 v2, 0x4

    aput-object v1, p2, v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->tscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 98
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->leftToolbar:Landroid/view/View;

    .line 99
    iput-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->rightToolbar:Landroid/view/View;

    return-void
.end method

.method public isSidePanelsVisible()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    return v0
.end method

.method public toggleSidePanelsVisibility()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    .line 113
    iget-boolean v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->isToolbarsVisible:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->leftToolbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/OxygenInterfaceOverlay;->rightToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
