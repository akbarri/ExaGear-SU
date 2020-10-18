.class public Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;
.super Ljava/lang/Object;
.source "FiniteStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;
    }
.end annotation


# instance fields
.field private allStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

.field private defaultState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

.field private listeners:Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

.field private transitionTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->transitionTable:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->allStates:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->listeners:Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

    return-void
.end method

.method private changeState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    invoke-virtual {v0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->notifyBecomeInactive()V

    .line 138
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->listeners:Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

    iget-object v1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;->sendLeftState(Lcom/eltechs/axs/finiteStateMachine/FSMState;)V

    .line 140
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    .line 141
    iget-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    invoke-virtual {p1}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->notifyBecomeActive()V

    .line 142
    iget-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->listeners:Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;->sendEnteredState(Lcom/eltechs/axs/finiteStateMachine/FSMState;)V

    return-void
.end method

.method private getNextStateByCurrentStateAndEvent(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->transitionTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;

    .line 156
    iget-object v2, v1, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;->preState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;->event:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    if-ne v2, p2, :cond_0

    .line 159
    iget-object p1, v1, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;->postState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    return-object p1

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->defaultState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    return-object p1
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/finiteStateMachine/FSMListener;)V
    .locals 1

    .line 185
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->listeners:Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;->addListener(Lcom/eltechs/axs/finiteStateMachine/FSMListener;)V

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTransition(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->allStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Transition from unknown state"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->allStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Transition to unknown state"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->transitionTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;-><init>(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public configurationCompleted()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Initial state not set"

    invoke-static {v0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->defaultState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Default state not set"

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->transitionTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "Transitional table is not initialized"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->allStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "States are not set"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    invoke-virtual {v0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->notifyBecomeActive()V

    return-void
.end method

.method public isActiveState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)Z
    .locals 1

    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/eltechs/axs/finiteStateMachine/FSMListener;)V
    .locals 1

    .line 193
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->listeners:Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/finiteStateMachine/FSMListenersList;->removeListener(Lcom/eltechs/axs/finiteStateMachine/FSMListener;)V

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendEvent(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V
    .locals 1

    .line 174
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 178
    iget-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->getNextStateByCurrentStateAndEvent(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->changeState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDefaultState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->defaultState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    return-void
.end method

.method public setInitialState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->allStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 75
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->currentState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    return-void
.end method

.method public varargs setStatesList([Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V
    .locals 4

    const/4 v0, 0x0

    .line 60
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 62
    invoke-virtual {v2, p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->attach(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V

    .line 63
    iget-object v3, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->allStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
