.class public abstract Lcom/eltechs/ed/controls/touchControls/AbstractTCF;
.super Ljava/lang/Object;
.source "AbstractTCF.java"

# interfaces
.implements Lcom/eltechs/axs/TouchScreenControlsFactory;


# instance fields
.field private mGestureContext:Lcom/eltechs/axs/GestureStateMachine/GestureContext;

.field protected mUIOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;Landroid/view/View;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 9

    .line 56
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v1, Lcom/eltechs/axs/TouchEventMultiplexor;

    invoke-direct {v1}, Lcom/eltechs/axs/TouchEventMultiplexor;-><init>()V

    .line 74
    new-instance v2, Lcom/eltechs/axs/TouchArea;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v3, v2

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 76
    iget p2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p3, v2, v1, p2}, Lcom/eltechs/ed/controls/touchControls/AbstractTCF;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/ed/controls/touchControls/AbstractTCF;->mGestureContext:Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    .line 77
    new-instance p2, Lcom/eltechs/axs/SimpleTouchScreenControl;

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/eltechs/axs/TouchArea;

    const/4 v0, 0x0

    aput-object v2, p3, v0

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/TouchScreenControls;->add(Lcom/eltechs/axs/TouchScreenControl;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/view/View;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Lcom/eltechs/axs/TouchScreenControls;
    .locals 4

    .line 31
    new-instance v0, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;

    invoke-direct {v0}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->setSceneViewport(FFFF)V

    .line 35
    new-instance v1, Lcom/eltechs/axs/TouchScreenControls;

    invoke-direct {v1, v0}, Lcom/eltechs/axs/TouchScreenControls;-><init>(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    .line 36
    invoke-direct {p0, v1, p1, p2}, Lcom/eltechs/ed/controls/touchControls/AbstractTCF;->fillTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;Landroid/view/View;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    return-object v1
.end method

.method public abstract createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end method

.method public hasVisibleControls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setUIOverlay(Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/eltechs/ed/controls/touchControls/AbstractTCF;->mUIOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    return-void
.end method
