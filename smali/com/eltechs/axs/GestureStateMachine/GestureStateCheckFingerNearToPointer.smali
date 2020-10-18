.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateCheckFingerNearToPointer.java"


# static fields
.field public static FAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static NEAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final distThreshold:D

.field private final isTwoFingersAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->NEAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 26
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->FAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;DZ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 34
    iput-wide p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->distThreshold:D

    .line 35
    iput-boolean p4, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->isTwoFingersAllowed:Z

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    const/4 v1, 0x2

    .line 42
    new-array v2, v1, [F

    iget v3, v0, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-float v0, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 43
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerToViewTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 46
    iget-boolean v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->isTwoFingersAllowed:Z

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 54
    :goto_2
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getTouchArea()Lcom/eltechs/axs/TouchArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea;->getLastFingerAction()Lcom/eltechs/axs/TouchArea$FingerAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea$FingerAction;->getFinger()Lcom/eltechs/axs/Finger;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v5

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v0

    invoke-direct {v1, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 60
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v0

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/Finger;

    invoke-virtual {v5}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v5

    invoke-direct {v1, v0, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v1

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/Finger;

    invoke-virtual {v5}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    .line 64
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/Finger;

    invoke-virtual {v5}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v5

    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eltechs/axs/Finger;

    invoke-virtual {v6}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 63
    invoke-static {v0, v1}, Lcom/eltechs/axs/GeometryHelpers;->center(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 68
    :goto_3
    aget v0, v2, v4

    aget v2, v2, v3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3, v1}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->distThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    .line 70
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->NEAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_4

    .line 73
    :cond_6
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->FAR:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateCheckFingerNearToPointer;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_4
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
