.class public Lcom/eltechs/axs/activities/SelectExecutableFileActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "SelectExecutableFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_ADD_MORE_GAMES:I = 0x2713

.field private static final REQUEST_CODE_CHOOSE_CUSTOMIZATION_PACKAGE:I = 0x2711

.field private static final REQUEST_CODE_SET_RUN_OPTIONS:I = 0x2712

.field private static final REQUEST_CODE_SHOW_BUY_PROMO_WINDOW:I = 0x2715

.field private static final REQUEST_CODE_SHOW_BUY_WINDOW:I = 0x2714

.field public static final TAG:Ljava/lang/String; = "SelectExecutableFileActivity"


# instance fields
.field private otherExecutableFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field

.field private showOthers:Z

.field private supportedExecutableFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->showOthers:Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->enableLogging(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->supportedExecutableFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->otherExecutableFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->showOthers:Z

    return p0
.end method

.method static synthetic access$202(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->showOthers:Z

    return p1
.end method

.method static synthetic access$300(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->resetList()V

    return-void
.end method

.method private checkConsistency()V
    .locals 2
    .annotation runtime Lcom/eltechs/axs/container/annotations/PostAdd;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->supportedExecutableFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->otherExecutableFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The collection of available executable files must be defined before calling SelectExecutableFileActivity."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method private processRemindActions()V
    .locals 10

    .line 98
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 101
    sget v2, Lcom/eltechs/axs/R$id;->promo_layout:I

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getExeFoundTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setExeFoundTime(Ljava/util/Date;)V

    .line 107
    invoke-static {p0}, Lcom/eltechs/axs/firebase/FAHelper;->logExeFoundEvent(Landroid/content/Context;)V

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v2}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isPrepaidPeriodActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setBuyOrSubscribeTime(Ljava/util/Date;)V

    return-void

    .line 123
    :cond_2
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->isActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->getMsecToEnd(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v6, 0x1388

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 129
    sget v6, Lcom/eltechs/axs/R$id;->promo_layout:I

    invoke-virtual {p0, v6}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 130
    sget v6, Lcom/eltechs/axs/R$id;->promo_timer:I

    invoke-virtual {p0, v6}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/iwgang/countdownview/CountdownView;

    .line 131
    invoke-virtual {v6, v2, v3}, Lcn/iwgang/countdownview/CountdownView;->start(J)V

    .line 133
    sget v2, Lcom/eltechs/axs/R$id;->promo_layout:I

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$1;

    invoke-direct {v3, p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$1;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v2, Lcom/eltechs/axs/R$id;->promo_text:I

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    sget v3, Lcom/eltechs/axs/R$string;->sef_promo_text:I

    invoke-virtual {p0, v3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->getDiscount(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {v2, v6}, Landroid/support/v4/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 144
    sget v2, Lcom/eltechs/axs/R$id;->promo_image:I

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 145
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->getDiscountImageRes(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getPromoNextRemindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getPromoNextRemindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 151
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/AppConfig;->setPromoNextRemindTime(Ljava/util/Date;)V

    const/16 v2, 0x2715

    .line 152
    const-class v3, Lcom/eltechs/axs/activities/BuyPromoActivity;

    invoke-virtual {p0, v2, v3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->startActivityForResult(ILjava/lang/Class;)V

    .line 158
    :cond_3
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getTrialNextRemindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 159
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getTrialNextRemindTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 161
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setTrialNextRemindTime(Ljava/util/Date;)V

    const/16 v0, 0x2714

    .line 162
    const-class v1, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->startActivityForResult(ILjava/lang/Class;)V

    :cond_4
    return-void
.end method

.method private resetList()V
    .locals 2

    .line 187
    sget v0, Lcom/eltechs/axs/R$id;->list_of_available_executable_files:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 188
    new-instance v1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setAvailableExecutableFiles(Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;)V
    .locals 1
    .annotation runtime Lcom/eltechs/axs/container/annotations/Autowired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles<",
            "TStateClass;>;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->getSupportedFiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->supportedExecutableFiles:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->getOtherFiles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->otherExecutableFiles:Ljava/util/List;

    .line 80
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->supportedExecutableFiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->showOthers:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isPrepaidPeriodActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    sget v0, Lcom/eltechs/axs/R$id;->promo_layout:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 431
    sget-object p1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->EXECUTABLE_FILE_SELECTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void

    :cond_1
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->resetList()V

    return-void

    .line 441
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/eltechs/axs/activities/FrameworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAddMoreGamesClicked(Landroid/view/View;)V
    .locals 1

    .line 446
    const-class p1, Lcom/eltechs/axs/activities/AddGameWizard;

    const/16 v0, 0x2713

    invoke-virtual {p0, v0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->startActivityForResult(ILjava/lang/Class;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 171
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->requestWindowFeature(I)Z

    .line 172
    sget p1, Lcom/eltechs/axs/R$layout;->select_executable_file:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->setContentView(I)V

    .line 174
    invoke-direct {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->processRemindActions()V

    return-void
.end method

.method public onRequestRescanClicked(Landroid/view/View;)V
    .locals 0

    .line 451
    sget-object p1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->FULL_SCAN_REQUESTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 180
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->resetList()V

    return-void
.end method
