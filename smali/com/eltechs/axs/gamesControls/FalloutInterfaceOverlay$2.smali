.class final Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay$2;
.super Ljava/lang/Object;
.source "FalloutInterfaceOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay;->setHandlerToButton(Landroid/widget/Button;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/xserver/ViewFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$facade:Lcom/eltechs/axs/xserver/ViewFacade;

.field final synthetic val$keyCode:Lcom/eltechs/axs/KeyCodesX;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay$2;->val$facade:Lcom/eltechs/axs/xserver/ViewFacade;

    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay$2;->val$keyCode:Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 316
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay$2;->val$facade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay$2;->val$keyCode:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyType(B)V

    return-void
.end method
