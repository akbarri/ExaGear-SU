.class Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->makeIabSetupAndInitialRetrievalOfGooglePlayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/eltechs/axs/helpers/iab/IabResult;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string v1, "IAB setup finished."

    invoke-static {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$000(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    .line 423
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-boolean v0, v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabSetupDone:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 427
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-boolean v0, v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabSetupDone:Z

    if-eqz v0, :cond_1

    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$600(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    move-result-object v0

    sget-object v2, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 436
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up in-app billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$702(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$700(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    sget-object v0, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->ERROR_OCCURRED:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$800(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    .line 443
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->dispose()V

    .line 444
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$502(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/helpers/iab/IabHelper;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    return-void

    .line 447
    :cond_3
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iput-boolean v1, p1, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabSetupDone:Z

    .line 450
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string v0, "IAB setup successful. Querying inventory."

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$900(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object v2, v2, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mGotInventoryWithPricesListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {p1, v1, v0, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method
