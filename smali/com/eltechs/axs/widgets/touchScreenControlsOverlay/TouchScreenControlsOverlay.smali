.class public Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;
.super Ljava/lang/Object;
.source "TouchScreenControlsOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;


# instance fields
.field private final configuration:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private popupMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->popupMenuItems:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    .line 31
    iput-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->configuration:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    return-void
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 3

    .line 42
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    iget-object v2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->configuration:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    .line 43
    iget-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->setZOrderMediaOverlay(Z)V

    .line 45
    iget-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->popupMenuItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V

    .line 47
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    return-object p1
.end method

.method public detach()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->detach()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->widget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    return-void
.end method

.method public setPopupMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsOverlay;->popupMenuItems:Ljava/util/List;

    return-void
.end method
