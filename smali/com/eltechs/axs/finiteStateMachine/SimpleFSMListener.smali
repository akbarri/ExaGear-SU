.class public abstract Lcom/eltechs/axs/finiteStateMachine/SimpleFSMListener;
.super Ljava/lang/Object;
.source "SimpleFSMListener.java"

# interfaces
.implements Lcom/eltechs/axs/finiteStateMachine/FSMListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enteredState(Lcom/eltechs/axs/finiteStateMachine/FSMState;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/finiteStateMachine/SimpleFSMListener;->stateSwitched(Lcom/eltechs/axs/finiteStateMachine/FSMState;)V

    return-void
.end method

.method public leftState(Lcom/eltechs/axs/finiteStateMachine/FSMState;)V
    .locals 0

    return-void
.end method

.method protected abstract stateSwitched(Lcom/eltechs/axs/finiteStateMachine/FSMState;)V
.end method
