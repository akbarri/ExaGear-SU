.class public Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;
.super Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.source "GestureState1FingerToLongClick.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# static fields
.field public static GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;-><init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V

    .line 34
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->addListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

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
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 45
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;->click(FF)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/TouchEventMultiplexor;->removeListener(Lcom/eltechs/axs/TouchEventAdapter;)V

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;->finalizeClick(FF)V

    .line 60
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->GESTURE_COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerToLongClick;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_0
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
