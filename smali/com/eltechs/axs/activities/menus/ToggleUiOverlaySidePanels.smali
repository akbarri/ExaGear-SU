.class public Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "ToggleUiOverlaySidePanels.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getUiOverlaySidePanels()Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;
    .locals 2

    .line 28
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;

    .line 29
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;->getXServerDisplayActivityInterfaceOverlay()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    move-result-object v0

    .line 30
    check-cast v0, Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;

    const-string v1, "ToggleUiOverlaySidePanels should be used with UiOverlays with SidePanels"

    .line 33
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;->getUiOverlaySidePanels()Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;->isSidePanelsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/eltechs/axs/R$string;->hide_side_panels:I

    .line 44
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/eltechs/axs/R$string;->show_side_panels:I

    .line 45
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/eltechs/axs/activities/menus/ToggleUiOverlaySidePanels;->getUiOverlaySidePanels()Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivityUiOverlaySidePanels;->toggleSidePanelsVisibility()V

    return-void
.end method
