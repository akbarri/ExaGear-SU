.class public Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateCopyFileIfExists.java"


# static fields
.field public static final COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static final FAILED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field private final from:Ljava/io/File;

.field private final to:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists$1;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 18
    new-instance v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists$2;

    invoke-direct {v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->FAILED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->from:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->to:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public notifyBecomeActive()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->from:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->from:Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->to:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 37
    sget-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    sget-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->FAILED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->COMPLETED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/finiteStateMachine/generalStates/FSMStateCopyFileIfExists;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :goto_0
    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 0

    return-void
.end method
