.class Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;
.super Ljava/lang/Object;
.source "FiniteStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FSMTransitionTableEntry"
.end annotation


# instance fields
.field public final event:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public final postState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

.field public final preState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;Lcom/eltechs/axs/finiteStateMachine/FSMEvent;Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;->preState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    .line 32
    iput-object p2, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;->event:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 33
    iput-object p3, p0, Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine$FSMTransitionTableEntry;->postState:Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;

    return-void
.end method
