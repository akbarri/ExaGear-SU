.class Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;
.super Ljava/lang/Object;
.source "DiabloInterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;->createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)Lcom/eltechs/axs/StateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;

.field final synthetic val$gestureMouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;->this$0:Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;

    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;->val$gestureMouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 305
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;->val$gestureMouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->getState()Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    move-result-object p1

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;->val$gestureMouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$1;->val$gestureMouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    :goto_0
    return-void
.end method
