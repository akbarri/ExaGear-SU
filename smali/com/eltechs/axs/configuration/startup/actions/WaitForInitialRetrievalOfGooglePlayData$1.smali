.class Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;
.super Ljava/lang/Object;
.source "WaitForInitialRetrievalOfGooglePlayData.java"

# interfaces
.implements Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;

.field final synthetic val$purchasableComponents:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;->val$purchasableComponents:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public googlePlayInteractionCompleted()V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;->val$purchasableComponents:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getGooglePlayInteractionState()Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->HAVE_DATA_LOCALLY:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;->sendDone()V

    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->ERROR_OCCURRED:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;->val$purchasableComponents:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;->sendError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected GooglePlayInteractionState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
