.class public Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;
.super Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;
.source "RtsUIOverlay.java"


# instance fields
.field private mAltButton:Landroid/widget/Button;

.field private mCtrlButton:Landroid/widget/Button;

.field private mIsAltPressed:Z

.field private mIsCtrlPressed:Z

.field private mIsShiftPressed:Z

.field private mShiftButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/controls/Controls;Lcom/eltechs/ed/controls/touchControls/AbstractTCF;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;-><init>(Lcom/eltechs/ed/controls/Controls;Lcom/eltechs/ed/controls/touchControls/AbstractTCF;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mIsCtrlPressed:Z

    return p0
.end method

.method static synthetic access$001(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mIsShiftPressed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mIsCtrlPressed:Z

    return p1
.end method

.method static synthetic access$003(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mIsShiftPressed:Z

    return p1
.end method

.method static synthetic access$004(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mIsAltPressed:Z

    return p0
.end method

.method static synthetic access$004(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mIsAltPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Landroid/widget/Button;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mCtrlButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$101(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Landroid/widget/Button;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mShiftButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$102(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Landroid/widget/Button;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mAltButton:Landroid/widget/Button;

    return-object p0
.end method

.method private createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;
    .locals 2

    .line 80
    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightTbWidth:I

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {p0, v0, p2, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;)Landroid/widget/Button;

    move-result-object p2

    .line 82
    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$2;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$2;-><init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Lcom/eltechs/axs/KeyCodesX;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 4

    .line 32
    invoke-super {p0, p1, p2}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftTbWidth:I

    const-string v1, "ESC"

    sget-object v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_ESC:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftTbWidth:I

    const-string v1, "Ren"

    sget-object v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_RETURN:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftTbWidth:I

    const-string v1, "Spa"

    sget-object v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_SPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftTbWidth:I

    const-string v1, "Tab"

    sget-object v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_TAB:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftTbWidth:I

    const-string v1, "Bap"

    sget-object v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_BACKSPACE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftTbWidth:I

    const-string v1, "\u2190"

    sget-object v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v3, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iget p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightTbWidth:I

    const-string v0, "CTRL"

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {p0, p2, v0, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;)Landroid/widget/Button;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mCtrlButton:Landroid/widget/Button;

    .line 46
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mCtrlButton:Landroid/widget/Button;

    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;-><init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mCtrlButton:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iget p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightTbWidth:I

    const-string v0, "Shift"

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {p0, p2, v0, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;)Landroid/widget/Button;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mShiftButton:Landroid/widget/Button;

    .line 46
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mShiftButton:Landroid/widget/Button;

    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;-><init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mShiftButton:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iget p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightTbWidth:I

    const-string v0, "Alt"

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {p0, p2, v0, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;)Landroid/widget/Button;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mAltButton:Landroid/widget/Button;

    .line 46
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mAltButton:Landroid/widget/Button;

    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;-><init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mAltButton:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createToolbarScrollArea()Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;

    move-result-object p2

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "\u2191"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "\u2193"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "\u2192"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_1:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_2:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "2"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_3:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "3"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_4:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "4"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_5:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "5"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_6:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "6"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_7:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "7"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_8:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "8"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_9:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "9"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_0:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F1:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F1"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F2:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F2"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F3:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F3"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F4:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F4"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F5:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F5"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F6:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F6"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F7:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F7"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F8:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F8"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F9:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F9"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F10:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F10"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F11:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F11"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F12:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F12"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_A:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "A"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_B:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "B"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_C:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "C"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_D:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "D"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_E:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "E"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_F:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "F"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_G:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "G"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_H:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "H"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_I:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "I"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_J:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "J"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_K:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "K"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_L:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "L"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_M:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "M"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_N:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "N"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_O:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "O"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_P:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "P"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_Q:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "Q"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_R:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "R"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_S:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "S"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_T:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "T"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_U:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "U"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_V:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "V"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_W:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "W"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_X:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "X"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_Y:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "Y"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_Z:Lcom/eltechs/axs/KeyCodesX;

    const-string v2, "Z"

    invoke-direct {p0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    iget-object p2, p2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p0, p2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->setToolbarSideToolbarsButtonVisibility(Z)V

    return-object p1
.end method
