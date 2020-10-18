.class Lcom/eltechs/axs/helpers/iab/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/helpers/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/iab/IabHelper;ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->this$0:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iput-boolean p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$listener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 643
    new-instance v0, Lcom/eltechs/axs/helpers/iab/IabResult;

    const-string v1, "Inventory refresh successful."

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 646
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->this$0:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-boolean v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$querySkuDetails:Z

    iget-object v4, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/eltechs/axs/helpers/iab/Inventory;

    move-result-object v2
    :try_end_0
    .catch Lcom/eltechs/axs/helpers/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 648
    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/iab/IabException;->getResult()Lcom/eltechs/axs/helpers/iab/IabResult;

    move-result-object v0

    .line 651
    :goto_0
    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->this$0:Lcom/eltechs/axs/helpers/iab/IabHelper;

    invoke-virtual {v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagEndAsync()V

    .line 655
    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->this$0:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-boolean v2, v2, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$listener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;-><init>(Lcom/eltechs/axs/helpers/iab/IabHelper$2;Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
