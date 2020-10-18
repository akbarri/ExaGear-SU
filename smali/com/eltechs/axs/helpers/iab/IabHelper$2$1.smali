.class Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/iab/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/helpers/iab/IabHelper$2;

.field final synthetic val$inv_f:Lcom/eltechs/axs/helpers/iab/Inventory;

.field final synthetic val$result_f:Lcom/eltechs/axs/helpers/iab/IabResult;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/iab/IabHelper$2;Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Inventory;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->this$1:Lcom/eltechs/axs/helpers/iab/IabHelper$2;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->val$result_f:Lcom/eltechs/axs/helpers/iab/IabResult;

    iput-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->val$inv_f:Lcom/eltechs/axs/helpers/iab/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->this$1:Lcom/eltechs/axs/helpers/iab/IabHelper$2;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->this$0:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-boolean v0, v0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDisposed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->this$1:Lcom/eltechs/axs/helpers/iab/IabHelper$2;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/iab/IabHelper$2;->val$listener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->val$result_f:Lcom/eltechs/axs/helpers/iab/IabResult;

    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper$2$1;->val$inv_f:Lcom/eltechs/axs/helpers/iab/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Inventory;)V

    :cond_0
    return-void
.end method
