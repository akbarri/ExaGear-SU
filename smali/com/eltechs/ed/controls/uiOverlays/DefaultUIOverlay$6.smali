.class Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 287
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object p1, p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mXServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$6;->val$keycode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyType(B)V

    return-void
.end method
