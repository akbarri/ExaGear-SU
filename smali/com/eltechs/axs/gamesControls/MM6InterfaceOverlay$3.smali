.class final Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$3;
.super Ljava/lang/Object;
.source "MM6InterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay;->createMouseModeButton(Landroid/app/Activity;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;II)Landroid/widget/ImageButton;
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

    .line 302
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$3;->val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$3;->val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    invoke-virtual {p1}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->getState()Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    move-result-object p1

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$3;->val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$3;->val$mouseMode:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V

    :goto_0
    return-void
.end method
