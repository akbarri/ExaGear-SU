.class public Lcom/eltechs/axs/activities/menus/ShowUsage;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "ShowUsage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    sget v0, Lcom/eltechs/axs/R$string;->show_tutorial:I

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/menus/ShowUsage;->getCurrentXServerDisplayActivity()Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    .line 35
    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getControlsInfoDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 38
    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEffectiveCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Lcom/eltechs/axs/payments/PurchasableComponent;->getInfoResId()I

    move-result v1

    .line 41
    const-class v2, Lcom/eltechs/axs/activities/UsageActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/eltechs/axs/activities/FrameworkActivity;->createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getControlsInfoDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "CONTROLS_INFO"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
