.class public Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;
.super Landroid/widget/FrameLayout;
.source "TouchScreenControlsWidget.java"


# instance fields
.field private final controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

.field private final displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

.field private final host:Lcom/eltechs/axs/activities/XServerDisplayActivity;

.field private final inputWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

.field private final target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchScreenControlsFactory;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->host:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    .line 36
    iput-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 37
    iput-object p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    .line 39
    invoke-interface {p3}, Lcom/eltechs/axs/TouchScreenControlsFactory;->hasVisibleControls()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 41
    iput-object p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    goto :goto_0

    .line 44
    :cond_0
    new-instance p3, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    invoke-direct {p3, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;)V

    iput-object p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    .line 45
    iget-object p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    invoke-virtual {p0, p3}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->addView(Landroid/view/View;)V

    .line 48
    :goto_0
    new-instance p3, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-direct {p3, p1, p2, p4}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;-><init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V

    iput-object p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->inputWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    .line 49
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->inputWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;)Lcom/eltechs/axs/activities/XServerDisplayActivity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->host:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    return-object p0
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->onPause()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 55
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eq p2, p4, :cond_0

    if-eq p3, p5, :cond_0

    .line 59
    new-instance p1, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;-><init>(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;IIII)V

    invoke-static {p1}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    .line 67
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->controlsFactory:Lcom/eltechs/axs/TouchScreenControlsFactory;

    iget-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->target:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-interface {p1, p0, p2}, Lcom/eltechs/axs/TouchScreenControlsFactory;->create(Landroid/view/View;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Lcom/eltechs/axs/TouchScreenControls;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->inputWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->setTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;)V

    .line 70
    iget-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->setTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;)V

    :cond_0
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->displayWidget:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method
