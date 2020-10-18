.class Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;
.super Ljava/lang/Object;
.source "CustomizationPackageInformerActivity.java"

# interfaces
.implements Lcom/eltechs/axs/payments/PurchaseCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->onBuySubscriptionButtonClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;->this$0:Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;->this$0:Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isPrepaidPeriodActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;->this$0:Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    invoke-static {v0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setBuyOrSubscribeTime(Ljava/util/Date;)V

    .line 181
    iget-object v0, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;->this$0:Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    invoke-static {v0}, Lcom/eltechs/axs/firebase/FAHelper;->logCompleteSubscribeEvent(Landroid/content/Context;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity$3;->this$0:Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/CustomizationPackageInformerActivity;->finish()V

    return-void
.end method
