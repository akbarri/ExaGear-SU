.class public Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateCheckFileExists.java"


# static fields
.field public static final DOESNT_EXISTS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static final EXISTS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists$1;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->EXISTS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 19
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists$2;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->DOESNT_EXISTS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->EXISTS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->DOESNT_EXISTS:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCheckFileExists;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
