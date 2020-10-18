.class final Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;
.super Ljava/lang/Object;
.source "MM6InterfaceOverlay.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/KeyboardModifiersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay;->createRunButton(Landroid/app/Activity;Lcom/eltechs/axs/xserver/ViewFacade;I)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runButton:Landroid/widget/Button;

.field final synthetic val$run_off_str:Ljava/lang/String;

.field final synthetic val$run_on_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$runButton:Landroid/widget/Button;

    iput-object p2, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$run_on_str:Ljava/lang/String;

    iput-object p3, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$run_off_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifiersChanged(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->SHIFT:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$runButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$run_on_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$runButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay$2;->val$run_off_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
