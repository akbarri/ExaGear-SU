.class public Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "CustomizationPackageInformerActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;",
        ">",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field public static final AVAILABLE_PLAY_EXPIRED:Ljava/lang/String; = "AVAILABLE_PLAY_EXPIRED"

.field private static final REQUEST_CODE_IAB_PURCHASE:I = 0x2711

.field private static final REQUEST_CODE_LIFETIME_INFO:I = 0x2713

.field private static final REQUEST_CODE_SELECT_CP:I = 0x2715

.field private static final REQUEST_CODE_SUBS_INFO:I = 0x2714

.field private static final REQUEST_CODE_TRIAL_RULES:I = 0x2712

.field public static final TAG:Ljava/lang/String; = "CustomizationPackageInformerActivity"


# instance fields
.field availablePlayExpired:Z

.field private rootViewOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->availablePlayExpired:Z

    .line 118
    new-instance v1, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$1;-><init>(Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;)V

    iput-object v1, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->rootViewOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 55
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->enableLogging(Z)V

    return-void
.end method

.method private getCurrentPurchasableComponent()Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getPurchasableComponent(I)Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 7

    .line 85
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isTrialPeriodActive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 89
    sget v1, Lcom/eltechs/axs/R$id;->cpi_run_trial_button:I

    invoke-virtual {p0, v1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getTrialPeriodExpirationTime()J

    move-result-wide v3

    const/4 v1, 0x2

    .line 94
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 95
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 97
    sget v3, Lcom/eltechs/axs/R$id;->cpi_run_trial_button:I

    invoke-virtual {p0, v3}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 98
    sget v4, Lcom/eltechs/axs/R$string;->cpi_run_trial_button_label:I

    invoke-virtual {p0, v4}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget v1, Lcom/eltechs/axs/R$id;->cpi_buy_cp_button:I

    invoke-virtual {p0, v1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getUnlimEffectivePriceString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    sget v3, Lcom/eltechs/axs/R$string;->cpi_buy_lifetime_button_with_price_label:I

    invoke-virtual {p0, v3}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_1
    sget v0, Lcom/eltechs/axs/R$string;->cpi_buy_lifetime_button_label:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget v0, Lcom/eltechs/axs/R$id;->cpi_buy_cp_promo_image:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->getDiscountImageRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->logDebug(Ljava/lang/String;)V

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2713

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2714

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2715

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->signalUserInteractionFinished()V

    return-void

    :cond_1
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_2

    .line 228
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    if-eqz v0, :cond_2

    .line 231
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v0, p1, p2, p3}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 242
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/eltechs/axs/activities/FrameworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onBuyLifetimeButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 147
    invoke-static {p0}, Lcom/eltechs/axs/firebase/FAHelper;->logTapBuyEvent(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object p1

    new-instance v0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$2;-><init>(Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;)V

    const/16 v1, 0x2711

    invoke-virtual {p1, p0, v1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->buyUnlim(Landroid/app/Activity;ILcom/eltechs/axs/payments/PurchaseCompletionCallback;)V

    return-void
.end method

.method public onBuySubscriptionButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 167
    invoke-static {p0}, Lcom/eltechs/axs/firebase/FAHelper;->logTapSubscribeEvent(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getPurchasableComponentGroup()Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    move-result-object p1

    .line 172
    new-instance v0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;-><init>(Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;)V

    const/16 v1, 0x2711

    invoke-virtual {p1, p0, v1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->buyMonthlySubscription(Landroid/app/Activity;ILcom/eltechs/axs/payments/PurchaseCompletionCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->requestWindowFeature(I)Z

    .line 63
    sget v0, Lcom/eltechs/axs/R$layout;->customization_package_informer:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->resizeRootViewToStandardDialogueSize()V

    .line 66
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getExtraParameter()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "AVAILABLE_PLAY_EXPIRED"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->availablePlayExpired:Z

    .line 72
    :cond_0
    sget p1, Lcom/eltechs/axs/R$id;->cpi_root_view:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->rootViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    invoke-direct {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->init()V

    return-void
.end method

.method public onInfoButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4c1c329e

    if-eq v0, v1, :cond_2

    const v1, -0x3c1771ca

    if-eq v0, v1, :cond_1

    const v1, -0x1bfb279e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "run_trial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "buy_subscription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "buy_lifetime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->unreachable(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x2714

    .line 200
    const-class v0, Lcom/eltechs/axs/activities/AddGameWizard;

    sget v1, Lcom/eltechs/axs/R$string;->cpi_subs_info:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->startActivityForResult(ILjava/lang/Class;Ljava/io/Serializable;)V

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x2713

    .line 197
    const-class v0, Lcom/eltechs/axs/activities/AddGameWizard;

    sget v1, Lcom/eltechs/axs/R$string;->cpi_lifetime_rules:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->startActivityForResult(ILjava/lang/Class;Ljava/io/Serializable;)V

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x2712

    .line 194
    const-class v0, Lcom/eltechs/axs/activities/AddGameWizard;

    sget v1, Lcom/eltechs/axs/R$string;->cpi_trial_rules:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->startActivityForResult(ILjava/lang/Class;Ljava/io/Serializable;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRunTrialButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->finish()V

    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEffectiveCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->signalUserInteractionFinished()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2715

    .line 141
    const-class v0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->startActivityForResult(ILjava/lang/Class;)V

    :goto_0
    return-void
.end method
