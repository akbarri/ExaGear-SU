.class Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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

.field final synthetic val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 379
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->createDialog(Lcom/eltechs/ed/guestContainers/GuestContainer;Z)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;->this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iget-object v1, v1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v1, v1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-virtual {v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CONT_RUN_GUIDE"

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method
