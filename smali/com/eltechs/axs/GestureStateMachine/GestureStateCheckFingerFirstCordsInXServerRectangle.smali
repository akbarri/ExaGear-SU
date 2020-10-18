.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateCheckFingerFirstCordsInXServerRectangle.java"


# static fields
.field public static INSIDE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static OUTSIDE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final rect:Lcom/eltechs/axs/geom/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->INSIDE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 20
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->OUTSIDE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/geom/Rectangle;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 29
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 8

    .line 35
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getTouchArea()Lcom/eltechs/axs/TouchArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea;->getLastFingerAction()Lcom/eltechs/axs/TouchArea$FingerAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea$FingerAction;->getFinger()Lcom/eltechs/axs/Finger;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v1

    .line 37
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v0

    const/4 v2, 0x2

    .line 39
    new-array v3, v2, [F

    iget-object v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v4, v4, Lcom/eltechs/axs/geom/Rectangle;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v4, v4, Lcom/eltechs/axs/geom/Rectangle;->y:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 40
    new-array v2, v2, [F

    iget-object v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v4, v4, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget-object v7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v7, v7, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    aput v4, v2, v5

    iget-object v4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v4, v4, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget-object v7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v7, v7, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    aput v4, v2, v6

    .line 42
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 43
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 45
    aget v4, v3, v5

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_0

    aget v4, v2, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    aget v1, v3, v6

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    aget v1, v2, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 48
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->INSIDE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->OUTSIDE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerFirstCordsInXServerRectangle;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_0
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
