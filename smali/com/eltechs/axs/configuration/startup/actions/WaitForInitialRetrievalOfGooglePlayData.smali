.class public Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "WaitForInitialRetrievalOfGooglePlayData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/WaitForInitialRetrievalOfGooglePlayData;Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->addGooglePlayInteractionCompletionCallback(Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;)V

    return-void
.end method
