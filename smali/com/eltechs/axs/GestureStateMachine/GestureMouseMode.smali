.class public Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;
.super Ljava/lang/Object;
.source "GestureMouseMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;,
        Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->listeners:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getState()Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    return-object v0
.end method

.method public removeListener(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setState(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    .line 44
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;

    .line 46
    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-interface {v0, p0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;->mouseModeChanged(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
