.class public abstract Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "AbstractGestureFSMState.java"


# instance fields
.field private final context:Lcom/eltechs/axs/GestureStateMachine/GestureContext;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;->context:Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    return-void
.end method


# virtual methods
.method protected getContext()Lcom/eltechs/axs/GestureStateMachine/GestureContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/AbstractGestureFSMState;->context:Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    return-object v0
.end method
