.class Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createSideTbButton(ILjava/lang/String;Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;Lcom/eltechs/axs/KeyCodesX;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

.field final synthetic val$keycode:Lcom/eltechs/axs/KeyCodesX;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 300
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    .line 304
    iget-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object p1, p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    goto :goto_0

    .line 308
    :cond_0
    :pswitch_1
    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p2, p1, v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    .line 309
    iget-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object p1, p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$7;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {p2}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
