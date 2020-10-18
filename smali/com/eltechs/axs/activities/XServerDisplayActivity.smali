.class public Lcom/eltechs/axs/activities/XServerDisplayActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "XServerDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/XServerDisplayActivity$TrivialInterfaceOverlay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_INTERVAL:J = 0x4e20L

.field private static final COUNT_DOWN_TOTAL:J = 0x5265c00L

.field private static final ENABLE_TRACING_METHODS:Z = false

.field private static final REQUEST_CODE_INFORMER:I = 0x2713


# instance fields
.field private contextMenuRequestHandler:Ljava/lang/Runnable;

.field private interfaceOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

.field private periodicIabCheckTimer:Landroid/os/CountDownTimer;

.field private uiOverlayView:Landroid/view/View;

.field private viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 43
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/eltechs/axs/activities/XServerDisplayActivity$TrivialInterfaceOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivity$TrivialInterfaceOverlay;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity$1;)V

    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->interfaceOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    .line 67
    new-instance v0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;

    const-wide/32 v4, 0x5265c00

    const-wide/16 v6, 0x4e20

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;JJ)V

    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->periodicIabCheckTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/activities/XServerDisplayActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->checkIab()V

    return-void
.end method

.method static synthetic access$200(Lcom/eltechs/axs/activities/XServerDisplayActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->periodicIabCheckTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private buildUI()V
    .locals 2

    const v0, 0x7f0b003d

    .line 150
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->setContentView(I)V

    .line 151
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->interfaceOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    iget-object v1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-interface {v0, p0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;->attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->uiOverlayView:Landroid/view/View;

    .line 156
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->uiOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkForSuddenDeath()Z
    .locals 2

    .line 199
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eltechs/axs/R$string;->xda_guest_suddenly_died:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/activities/FatalErrorActivity;->showFatalError(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method private checkIab()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eltechs.ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isTrialPeriodActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isPrepaidPeriodActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    const-class v0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    const-string v1, "AVAILABLE_PLAY_EXPIRED"

    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private getRootLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 336
    sget v0, Lcom/eltechs/axs/R$id;->mainView:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private setXServerDisplayActivityInterfaceOverlay(Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;)V
    .locals 0
    .annotation runtime Lcom/eltechs/axs/container/annotations/Autowired;
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->interfaceOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    return-void
.end method


# virtual methods
.method public addDefaultPopupMenu(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;)V"
        }
    .end annotation

    .line 281
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 283
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 286
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->add(Ljava/util/List;)V

    .line 288
    new-instance p1, Lcom/eltechs/axs/activities/XServerDisplayActivity$2;

    invoke-direct {p1, p0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivity$2;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;)V

    iput-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->contextMenuRequestHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public freezeXServerScene()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->freezeRenderer()V

    :cond_0
    return-void
.end method

.method public hideDecor()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1f06

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 143
    new-instance v1, Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Landroid/view/View;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public isHorizontalStretchEnabled()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->isHorizontalStretchEnabled()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 271
    invoke-static {}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication()V

    .line 272
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->finish()V

    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/eltechs/axs/activities/FrameworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 81
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    const-class v1, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    .line 84
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "facadeclass"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 87
    :try_start_0
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lcom/eltechs/axs/xserver/XServer;

    aput-object v5, v4, v3

    const-class v5, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/ViewFacade;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x7f0b003d

    .line 99
    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->checkForSuddenDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getXServerViewConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    .line 102
    new-instance v2, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v0

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getXServerViewConfiguration()Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    move-result-object p1

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;-><init>(Landroid/content/Context;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/configuration/XServerViewConfiguration;)V

    iput-object v2, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 103
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->periodicIabCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->hideDecor()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 249
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 253
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->setContentView(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->periodicIabCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 256
    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->periodicIabCheckTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 232
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onPause()V

    .line 234
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->freezeEnvironment()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->interfaceOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    invoke-interface {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;->detach()V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->uiOverlayView:Landroid/view/View;

    .line 243
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 149
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->checkForSuddenDeath()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/eltechs/axs/activities/XServerDisplayActivity$NoMenuPopup;->INSTANCE:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->contextMenuRequestHandler:Ljava/lang/Runnable;

    .line 158
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->buildUI()V

    .line 160
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->uiOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 163
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->resumeEnvironment()V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->checkIab()V

    .line 172
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eltechs.ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getControlsInfoDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v2}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getControlsId()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getControlsWithInfoShown()Ljava/util/Set;

    move-result-object v3

    .line 178
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "CONTROLS_INFO"

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 181
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v0, v3}, Lcom/eltechs/axs/AppConfig;->setControlsWithInfoShown(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public placeViewOfXServer(IIII)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 303
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, p4, :cond_1

    .line 308
    :cond_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 309
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 310
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 311
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 313
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->invalidate()V

    :cond_1
    return-void
.end method

.method public setHorizontalStretchEnabled(Z)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    return-void
.end method

.method public showPopupMenu()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->contextMenuRequestHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public startInformerActivity(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x2713

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public unfreezeXServerScene()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->unfreezeRenderer()V

    :cond_0
    return-void
.end method
