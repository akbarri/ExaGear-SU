.class Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;
.super Ljava/lang/Object;
.source "TouchScreenControlsInputWidget.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->installKeyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 69
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x2002

    if-ne p1, v3, :cond_2

    if-ne p2, v0, :cond_1

    .line 79
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerButtonPress(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerButtonRelease(I)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/16 p1, 0x52

    if-ne p2, p1, :cond_3

    .line 91
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 93
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$100(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->showPopupMenu()V

    return v2

    :cond_3
    if-ne p2, v0, :cond_5

    .line 97
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    .line 98
    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$200(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    move-result-object p1

    iget-object p1, p1, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->backKeyAction:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    sget-object v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->SHOW_POPUP_MENU:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    if-ne p1, v0, :cond_5

    .line 100
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 102
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$100(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->showPopupMenu()V

    :cond_4
    return v2

    :cond_5
    const/16 p1, 0x17

    if-ne p2, p1, :cond_8

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_6

    .line 111
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerButtonPress(I)V

    goto :goto_1

    .line 112
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 114
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerButtonRelease(I)V

    :cond_7
    :goto_1
    return v2

    :cond_8
    const/16 p1, 0x66

    if-eq p2, p1, :cond_11

    const/16 p1, 0x68

    if-ne p2, p1, :cond_9

    goto :goto_4

    :cond_9
    const/16 p1, 0x67

    if-eq p2, p1, :cond_e

    const/16 p1, 0x69

    if-ne p2, p1, :cond_a

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_c

    .line 145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_b

    .line 147
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$300(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/Keyboard;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 148
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 150
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$300(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/Keyboard;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 154
    :cond_c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_d

    .line 156
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$300(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/eltechs/axs/Keyboard;->handleUnicodeKeyType(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1

    .line 133
    :cond_e
    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_f

    .line 135
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    sget-object p2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    goto :goto_3

    .line 136
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_10

    .line 138
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    sget-object p2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    :cond_10
    :goto_3
    return v2

    .line 121
    :cond_11
    :goto_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_12

    .line 123
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    sget-object p2, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    goto :goto_5

    .line 124
    :cond_12
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_13

    .line 126
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    sget-object p2, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    :cond_13
    :goto_5
    return v2
.end method
