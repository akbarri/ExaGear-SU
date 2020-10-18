.class public Lcom/eltechs/axs/finiteStateMachine/FSMEvent;
.super Ljava/lang/Object;
.source "FSMEvent.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FSMEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/eltechs/axs/finiteStateMachine/FSMEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/finiteStateMachine/FSMEvent;->name:Ljava/lang/String;

    return-object v0
.end method
