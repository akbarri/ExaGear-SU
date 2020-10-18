.class Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/payments/PurchasableComponentsCollection;
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

    .line 486
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Inventory;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string v1, "Query IAB inventory finished."

    invoke-static {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$000(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    .line 492
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$600(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 496
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query in-app billing inventory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$702(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$700(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    sget-object p2, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->ERROR_OCCURRED:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$800(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    return-void

    .line 508
    :cond_2
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string v0, "Query IAB inventory was successful."

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$1002(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/helpers/iab/Inventory;)Lcom/eltechs/axs/helpers/iab/Inventory;

    .line 511
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    sget-object p2, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->HAVE_DATA_LOCALLY:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$800(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    return-void
.end method
