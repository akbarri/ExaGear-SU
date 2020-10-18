.class Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;
.super Ljava/lang/Object;
.source "DiabloInterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;


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

.field final synthetic val$button:Lcom/eltechs/axs/StateButton;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;Lcom/eltechs/axs/StateButton;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;->this$0:Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;

    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;->val$button:Lcom/eltechs/axs/StateButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseModeChanged(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V
    .locals 0

    .line 315
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    if-ne p2, p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;->val$button:Lcom/eltechs/axs/StateButton;

    const-string p2, "\u5de6\u952e"

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/StateButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay$2;->val$button:Lcom/eltechs/axs/StateButton;

    const-string p2, "\u53f3\u952e"

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/StateButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
