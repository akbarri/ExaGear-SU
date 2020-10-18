.class Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;->this$3:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 402
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;->this$3:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->val$node:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    iget-object p2, p2, Lcom/eltechs/ed/XDGLink;->linkFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 403
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2$1;->this$3:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;->this$2:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-static {p2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->access$900(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)V

    .line 404
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
