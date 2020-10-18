.class public Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;
.super Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;
.source "SelectExecutableFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase<",
        "TStateClass;",
        "Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;",
        ">;"
    }
.end annotation


# instance fields
.field private final detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection<",
            "TStateClass;>;"
        }
    .end annotation
.end field

.field private final installationInstructions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection<",
            "TStateClass;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->installationInstructions:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    return-void
.end method

.method private checkIabAndRunApplication()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEffectiveCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    const-string v1, "Customization package for an unsupported executable must have been selected by SelectExecutableFileActivity."

    .line 87
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->runApplication()V

    return-void
.end method

.method private persistPerApplicationSettings()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    .line 109
    :try_start_0
    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->get(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->storeDetectedExecutableFileConfiguration()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private runApplication()V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->persistPerApplicationSettings()V

    .line 98
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getFurtherStartupActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addActions(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->sendDone()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;->getAvailableExecutableFiles()Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->getSupportedFiles()Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->getOtherFiles()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->installationInstructions:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->sendErrorHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    const-class v0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->requestUserInput(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 79
    invoke-static {}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication()V

    return-void
.end method

.method public userInteractionFinished(Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$1;->$SwitchMap$com$eltechs$axs$configuration$startup$actions$SelectExecutableFile$UserRequestedAction:[I

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;-><init>(Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;Z)V

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 68
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->installationInstructions:Ljava/lang/String;

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->detectors:Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;-><init>(Ljava/lang/String;Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;)V

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 70
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->sendDone()V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->checkIabAndRunApplication()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic userInteractionFinished(Ljava/io/Serializable;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;->userInteractionFinished(Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;)V

    return-void
.end method
