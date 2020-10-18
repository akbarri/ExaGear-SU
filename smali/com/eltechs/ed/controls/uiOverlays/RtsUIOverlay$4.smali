.class Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;
.super Ljava/lang/Object;
.source "RtsUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->createNumButton(Lcom/eltechs/axs/KeyCodesX;Ljava/lang/String;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

.field final synthetic val$keycode:Lcom/eltechs/axs/KeyCodesX;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    invoke-static {v0}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$001(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    .line 89
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyType(B)V

    .line 90
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    sget-object v1, Lcom/eltechs/axs/KeyCodesX;->KEY_SHIFT_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    .line 91
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$003(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Z)Z

    .line 92
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    invoke-static {v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$101(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    invoke-static {v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$001(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyType(B)V

    .line 101
    :goto_0
    check-cast p1, Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    const-wide/16 v0, 0x19

    .line 103
    new-instance v2, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;

    invoke-direct {v2, p0, p1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;-><init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;Landroid/widget/Button;)V

    invoke-static {v0, v1, v2}, Lcom/eltechs/axs/helpers/UiThread;->postDelayed(JLjava/lang/Runnable;)Z

    return-void
.end method
