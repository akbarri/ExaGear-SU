.class Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;


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

    .line 588
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB purchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 592
    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$000(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    .line 593
    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p2

    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;)V

    .line 594
    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$600(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    move-result-object p2

    sget-object v0, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 597
    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 599
    :cond_1
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabResult;->isFailure()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 600
    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error IAB purchasing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    goto :goto_1

    .line 602
    :cond_2
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string p2, "IAB purchase successful."

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 606
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$1002(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/helpers/iab/Inventory;)Lcom/eltechs/axs/helpers/iab/Inventory;

    .line 607
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$900(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object v0, v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mGotInventoryWithPricesListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {p1, v1, p2, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method
