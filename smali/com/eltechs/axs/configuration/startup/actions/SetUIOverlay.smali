.class public Lcom/eltechs/axs/configuration/startup/actions/SetUIOverlay;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "SetUIOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SetUIOverlay;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEffectiveCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getRecommendedCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SetUIOverlay;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;

    invoke-interface {v1}, Lcom/eltechs/axs/payments/PurchasableComponent;->getUiOverlay()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;->setXServerDisplayActivityInterfaceOverlay(Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SetUIOverlay;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getDefaultUiOverlay()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;->setXServerDisplayActivityInterfaceOverlay(Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;)V

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SetUIOverlay;->sendDone()V

    return-void
.end method
