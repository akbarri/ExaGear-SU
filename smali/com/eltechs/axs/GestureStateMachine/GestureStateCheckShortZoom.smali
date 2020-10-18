.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateCheckShortZoom.java"


# static fields
.field public static ZOOM_LONG:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field public static ZOOM_SHORT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent; = null

.field private static final zoomActivateThresold:I = 0x190


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->ZOOM_SHORT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 21
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->ZOOM_LONG:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    return-void
.end method

.method private static getDistanceBetweenFingers(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)F"
        }
    .end annotation

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 35
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/Finger;

    .line 37
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p0

    .line 37
    invoke-static {v1, v0, v2, p0}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;->isZoomed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->getDistanceBetweenFingers(Ljava/util/List;)F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->ZOOM_LONG:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->ZOOM_SHORT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckShortZoom;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_1
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
