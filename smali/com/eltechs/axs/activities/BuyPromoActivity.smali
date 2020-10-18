.class public Lcom/eltechs/axs/activities/BuyPromoActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "BuyPromoActivity.java"


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
.field private static final REQUEST_CODE_IAB_PURCHASE:I = 0x2711

.field public static final TAG:Ljava/lang/String; = "BuyPromoActivity"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->enableLogging(Z)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 62
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getUnlimEffectivePriceString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getUnlimNoPromoPriceString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->getMsecToEnd(Landroid/content/Context;)J

    move-result-wide v2

    .line 70
    sget v4, Lcom/eltechs/axs/R$id;->buy_promo_timer:I

    invoke-virtual {p0, v4}, Lcom/eltechs/axs/activities/BuyPromoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/iwgang/countdownview/CountdownView;

    .line 71
    invoke-virtual {v4, v2, v3}, Lcn/iwgang/countdownview/CountdownView;->start(J)V

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 76
    sget v3, Lcom/eltechs/axs/R$id;->buy_promo_old_price:I

    invoke-virtual {p0, v3}, Lcom/eltechs/axs/activities/BuyPromoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 79
    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 81
    sget v0, Lcom/eltechs/axs/R$id;->buy_promo_new_price:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {v0, v2}, Landroid/support/v4/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 87
    :cond_0
    sget v0, Lcom/eltechs/axs/R$id;->buy_promo_old_price:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    sget v0, Lcom/eltechs/axs/R$id;->buy_promo_new_price:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget v1, Lcom/eltechs/axs/R$string;->buy_promo_no_price:I

    invoke-virtual {p0, v1}, Lcom/eltechs/axs/activities/BuyPromoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 92
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-static {v0, v2}, Landroid/support/v4/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 124
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

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->logDebug(Ljava/lang/String;)V

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 128
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2, p3}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/eltechs/axs/activities/FrameworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBuyButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 103
    invoke-static {p0}, Lcom/eltechs/axs/firebase/FAHelper;->logTapBuyPromoEvent(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object p1

    new-instance v0, Lcom/eltechs/axs/activities/BuyPromoActivity$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/activities/BuyPromoActivity$1;-><init>(Lcom/eltechs/axs/activities/BuyPromoActivity;)V

    const/16 v1, 0x2711

    invoke-virtual {p1, p0, v1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->buyUnlim(Landroid/app/Activity;ILcom/eltechs/axs/payments/PurchaseCompletionCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/BuyPromoActivity;->requestWindowFeature(I)Z

    .line 51
    sget p1, Lcom/eltechs/axs/R$layout;->buy_promo:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/BuyPromoActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->resizeRootViewToStandardDialogueSize()V

    .line 54
    invoke-direct {p0}, Lcom/eltechs/axs/activities/BuyPromoActivity;->init()V

    return-void
.end method
