.class public Lcom/eltechs/axs/configuration/startup/actions/ShowUsageDialog;
.super Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.source "ShowUsageDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 22
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    .line 23
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEffectiveCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;

    invoke-interface {v0}, Lcom/eltechs/axs/payments/PurchasableComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->isUsageShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-class v2, Lcom/eltechs/axs/activities/UsageActivity;

    invoke-interface {v0}, Lcom/eltechs/axs/payments/PurchasableComponent;->getInfoResId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/eltechs/axs/configuration/startup/actions/ShowUsageDialog;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {v1, v0}, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->setUsageShown(Z)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/ShowUsageDialog;->sendDone()V

    :goto_0
    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/ShowUsageDialog;->sendDone()V

    return-void
.end method

.method public userInteractionFinished()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/ShowUsageDialog;->sendDone()V

    return-void
.end method
