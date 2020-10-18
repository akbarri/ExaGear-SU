.class Lcom/eltechs/ed/startupActions/StartGuest$1;
.super Ljava/lang/Object;
.source "StartGuest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/startupActions/StartGuest;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/startupActions/StartGuest;

.field final synthetic val$ecp:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/startupActions/StartGuest;Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->this$0:Lcom/eltechs/ed/startupActions/StartGuest;

    iput-object p2, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->val$ecp:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->this$0:Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-static {v0}, Lcom/eltechs/ed/startupActions/StartGuest;->access$800(Lcom/eltechs/ed/startupActions/StartGuest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    new-instance v1, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->val$ecp:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->this$0:Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-static {v3}, Lcom/eltechs/ed/startupActions/StartGuest;->access$700(Lcom/eltechs/ed/startupActions/StartGuest;)Lcom/eltechs/ed/controls/Controls;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/ed/controls/Controls;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->this$0:Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-static {v4}, Lcom/eltechs/ed/startupActions/StartGuest;->access$700(Lcom/eltechs/ed/startupActions/StartGuest;)Lcom/eltechs/ed/controls/Controls;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/ed/controls/Controls;->createInfoDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;-><init>(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;Ljava/lang/String;Landroid/support/v4/app/DialogFragment;)V

    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->setSelectedExecutableFile(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    .line 376
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->this$0:Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-static {v0}, Lcom/eltechs/ed/startupActions/StartGuest;->access$900(Lcom/eltechs/ed/startupActions/StartGuest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    check-cast v0, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;

    iget-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest$1;->this$0:Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-static {v1}, Lcom/eltechs/ed/startupActions/StartGuest;->access$700(Lcom/eltechs/ed/startupActions/StartGuest;)Lcom/eltechs/ed/controls/Controls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/ed/controls/Controls;->create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;->setXServerDisplayActivityInterfaceOverlay(Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;)V

    return-void
.end method
