.class public Lcom/eltechs/axs/payments/PurchasableComponentGroup;
.super Ljava/lang/Object;
.source "PurchasableComponentGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;
    }
.end annotation


# instance fields
.field private host:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

.field private final name:Ljava/lang/String;

.field private final remoteSubscription:Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

.field private final subscriptionSkuName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 39
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->subscriptionSkuName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->remoteSubscription:Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

    return-void
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->host:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    return-void
.end method

.method public buyMonthlySubscription(Landroid/app/Activity;ILcom/eltechs/axs/payments/PurchaseCompletionCallback;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->isSubscriptionActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->host:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    new-instance v1, Lcom/eltechs/axs/payments/PurchasableComponentGroup$1;

    invoke-direct {v1, p0, p3}, Lcom/eltechs/axs/payments/PurchasableComponentGroup$1;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentGroup;Lcom/eltechs/axs/payments/PurchaseCompletionCallback;)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->addGooglePlayInteractionCompletionCallbackOnlyChange(Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;)V

    .line 101
    iget-object p3, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->host:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->subscriptionSkuName:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->buySubscription(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteSubscription()Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->remoteSubscription:Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

    return-object v0
.end method

.method public getSkuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->subscriptionSkuName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSubscriptionActive()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->host:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getIabInventory()Lcom/eltechs/axs/helpers/iab/Inventory;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->subscriptionSkuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->remoteSubscription:Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->host:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->remoteSubscription:Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

    iget-object v2, v2, Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getRemotePackageOwnedSkuList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->remoteSubscription:Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

    iget-object v2, v2, Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;->skuName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
