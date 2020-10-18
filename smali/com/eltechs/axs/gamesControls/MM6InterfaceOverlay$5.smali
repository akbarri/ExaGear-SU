.class final Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$5;
.super Ljava/lang/Object;
.source "MM6InterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay;->setHandlerToButton(Landroid/widget/Button;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/xserver/ViewFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$presser:Lcom/eltechs/axs/StickyKeyPress;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/StickyKeyPress;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$5;->val$presser:Lcom/eltechs/axs/StickyKeyPress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 360
    :pswitch_1
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$5;->val$presser:Lcom/eltechs/axs/StickyKeyPress;

    invoke-virtual {p1}, Lcom/eltechs/axs/StickyKeyPress;->cancel()V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$5;->val$presser:Lcom/eltechs/axs/StickyKeyPress;

    invoke-virtual {p1}, Lcom/eltechs/axs/StickyKeyPress;->start()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
