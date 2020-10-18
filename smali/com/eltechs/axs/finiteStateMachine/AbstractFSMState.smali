.class public abstract Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.super Ljava/lang/Object;
.source "AbstractFSMState.java"

# interfaces
.implements Lcom/eltechs/axs/finiteStateMachine/FSMState;


# instance fields
.field private machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already attached to FSM!"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    return-void
.end method

.method protected final getMachine()Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    return-object v0
.end method

.method protected final sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-virtual {v0, p0, p1}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method protected final sendEventIfActive(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    invoke-virtual {v1, p0}, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;->isActiveState(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    .line 33
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
