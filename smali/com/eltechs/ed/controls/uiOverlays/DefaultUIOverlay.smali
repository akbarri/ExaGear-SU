.class public Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;,
        Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;
    }
.end annotation


# static fields
.field private static final displaySizeThresholdHeightInches:F = 3.0f

.field private static final displaySizeThresholdWidthInches:F = 5.0f

.field private static final sideToolbarWidthNormalDisplayInches:F = 0.4f

.field private static final sideToolbarWidthSmallDisplayInches:F = 0.35f

.field private static final toolbarHeightNormalDisplayInches:F = 0.27f

.field private static final toolbarHeightSmallDisplayInches:F = 0.23f


# instance fields
.field private final mControls:Lcom/eltechs/ed/controls/Controls;

.field private final mControlsFactory:Lcom/eltechs/ed/controls/touchControls/AbstractTCF;

.field protected mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

.field protected mLeftTbWidth:I

.field protected mLeftToolbar:Landroid/widget/LinearLayout;

.field protected mRightTbWidth:I

.field protected mRightToolbar:Landroid/widget/LinearLayout;

.field protected mToolbar:Landroid/view/View;

.field private mTscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

.field protected mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field protected mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/controls/Controls;Lcom/eltechs/ed/controls/touchControls/AbstractTCF;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mControls:Lcom/eltechs/ed/controls/Controls;

    .line 87
    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mControlsFactory:Lcom/eltechs/ed/controls/touchControls/AbstractTCF;

    .line 88
    iget-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mControlsFactory:Lcom/eltechs/ed/controls/touchControls/AbstractTCF;

    invoke-virtual {p1, p0}, Lcom/eltechs/ed/controls/touchControls/AbstractTCF;->setUIOverlay(Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)Lcom/eltechs/ed/controls/Controls;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mControls:Lcom/eltechs/ed/controls/Controls;

    return-object p0
.end method

.method private createLeftToolbar()Landroid/view/View;
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createSideToolbar()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    .line 226
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftTbWidth:I

    .line 227
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createRightToolbar()Landroid/view/View;
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createSideToolbar()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    .line 233
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightTbWidth:I

    .line 234
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createSideToolbar()Landroid/widget/LinearLayout;
    .locals 5

    .line 210
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->isDisplaySmallWidth(Landroid/util/DisplayMetrics;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    .line 212
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 214
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 216
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, -0x99999a

    .line 217
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v0, 0x8

    .line 218
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v1
.end method

.method private createToolbar()Landroid/view/View;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const v1, 0x7f090038

    .line 126
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 127
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;

    invoke-direct {v2, p0, v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003b

    .line 138
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 139
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$2;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$2;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003a

    .line 149
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 150
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$3;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$3;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090039

    .line 159
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 160
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$4;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$4;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090037

    .line 169
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 170
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->isDisplaySmallHeight(Landroid/util/DisplayMetrics;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3e6b851f    # 0.23f

    goto :goto_0

    :cond_0
    const v2, 0x3e8a3d71    # 0.27f

    .line 201
    :goto_0
    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 202
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setMaxHeight(I)V

    .line 204
    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mToolbar:Landroid/view/View;

    return-object v0
.end method

.method private static isDisplaySmallHeight(Landroid/util/DisplayMetrics;)Z
    .locals 1

    .line 350
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, p0

    const/high16 p0, 0x40400000    # 3.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDisplaySmallWidth(Landroid/util/DisplayMetrics;)Z
    .locals 1

    .line 356
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, p0

    const/high16 p0, 0x40a00000    # 5.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 6

    .line 94
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    .line 95
    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 96
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 98
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mControlsFactory:Lcom/eltechs/ed/controls/touchControls/AbstractTCF;

    sget-object v2, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mTscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 99
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mTscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 101
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-direct {p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createLeftToolbar()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v3, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mTscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, p1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-direct {p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createRightToolbar()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-direct {p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createToolbar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p2, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    return-object v0
.end method

.method protected createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;)Landroid/widget/Button;
    .locals 1

    .line 268
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method protected createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;
    .locals 2

    .line 276
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, v0, p1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    .line 284
    sget-object p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$8;->$SwitchMap$com$eltechs$ed$controls$uiOverlays$DefaultUIOverlay$KeyButtonHandlerType:[I

    invoke-virtual {p3}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_0
    new-instance p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;

    invoke-direct {p1, p0, p4}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Lcom/eltechs/axs/KeyCodesX;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 287
    :pswitch_1
    new-instance p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;

    invoke-direct {p1, p0, p4}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Lcom/eltechs/axs/KeyCodesX;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createToolbarScrollArea()Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;
    .locals 5

    .line 239
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 240
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 247
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;

    invoke-direct {v2, p0, v0, v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;)V

    return-object v2
.end method

.method public detach()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mTscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mTscWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 366
    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mToolbar:Landroid/view/View;

    .line 367
    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    .line 368
    iput-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected setButtonStyleByState(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p2, 0x7f0800c7

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const p2, -0x222223

    .line 256
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0800c6

    .line 259
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const p2, -0xddddde

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method protected setToolbarSideToolbarsButtonVisibility(Z)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mToolbar:Landroid/view/View;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 327
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public toggleLeftToolbar()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mLeftToolbar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public toggleRightToolbar()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mRightToolbar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public toggleToolbar()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mToolbar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
