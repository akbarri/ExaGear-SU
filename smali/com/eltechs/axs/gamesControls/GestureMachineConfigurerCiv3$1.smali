.class final Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$1;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerCiv3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Ljava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$1;->val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$1;->val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    return-void
.end method
