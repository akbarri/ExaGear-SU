.class public Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;
.super Ljava/lang/Object;
.source "GestureJoyStickMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;,
        Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeChangeListener;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->listeners:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeChangeListener;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getState()Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    return-object v0
.end method

.method public removeListener(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeChangeListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setState(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;)V
    .locals 2

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    .line 30
    iget-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeChangeListener;

    iget-object v1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->state:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    invoke-interface {v0, p0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeChangeListener;->joyStickModeChanged(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
