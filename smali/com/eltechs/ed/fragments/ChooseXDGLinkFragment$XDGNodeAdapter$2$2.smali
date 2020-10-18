.class Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

.field final synthetic val$node:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->val$node:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-virtual {v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Shortcut deletion"

    .line 395
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0800ad

    .line 396
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v0, "This will only delete shortcut, not application or associated container.\n\nDelete shortcut?"

    .line 397
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v0, "Delete"

    .line 398
    new-instance v1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v0, "Cancel"

    .line 407
    new-instance v1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$2;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$2;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 414
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 417
    :pswitch_1
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->access$000(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->val$node:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    invoke-virtual {p1, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->copyXDGLinkToDesktop(Lcom/eltechs/ed/XDGLink;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f09011e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
