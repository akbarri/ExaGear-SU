.class Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;
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

    .line 458
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Inventory;)V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string v1, "Query IAB inventory finished."

    invoke-static {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$000(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    .line 464
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$600(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 468
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 471
    :cond_1
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 473
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$900(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iget-object v0, v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mGotInventoryListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {p1, v2, p2, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void

    .line 477
    :cond_2
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const-string v0, "Query IAB inventory with prices was successful."

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$1002(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/helpers/iab/Inventory;)Lcom/eltechs/axs/helpers/iab/Inventory;

    .line 480
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    sget-object p2, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->HAVE_DATA_LOCALLY:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$800(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    return-void
.end method
