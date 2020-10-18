.class public Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureStateDetectSwipe.java"


# static fields
.field public static NOT_SWIPE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static SWIPE_DOWN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static SWIPE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static SWIPE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static SWIPE_UP:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final coordsRatioThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_UP:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 23
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$2;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_DOWN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 24
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$3;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$3;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 25
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$4;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$4;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 26
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$5;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe$5;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->NOT_SWIPE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;D)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 33
    iput-wide p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->coordsRatioThreshold:D

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 9

    .line 39
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 42
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getXWhenFirstTouched()F

    move-result v2

    sub-float/2addr v1, v2

    .line 43
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getYWhenFirstTouched()F

    move-result v0

    sub-float/2addr v2, v0

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->coordsRatioThreshold:D

    mul-double/2addr v5, v7

    cmpl-double v0, v3, v5

    const/4 v3, 0x0

    if-lez v0, :cond_2

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    .line 47
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_RIGHT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_LEFT:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_3

    .line 48
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v6, p0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->coordsRatioThreshold:D

    mul-double/2addr v0, v6

    cmpl-double v0, v4, v0

    if-lez v0, :cond_4

    cmpl-float v0, v2, v3

    if-lez v0, :cond_3

    .line 50
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_DOWN:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->SWIPE_UP:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_3

    .line 53
    :cond_4
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->NOT_SWIPE:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureStateDetectSwipe;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_3
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
