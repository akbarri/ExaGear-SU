.class Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

.field final synthetic val$holder:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->val$holder:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->access$100(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->val$holder:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    .line 369
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v2, v2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-virtual {v2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 370
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->access$800(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0c0005

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0002

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 372
    iget-object p1, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    if-eqz p1, :cond_1

    .line 373
    iget-object v2, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuide()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "Show run guide"

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;

    invoke-direct {v3, p0, p1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$1;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 385
    :cond_1
    new-instance p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;

    invoke-direct {p1, p0, v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$2;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 424
    new-instance p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$3;

    invoke-direct {p1, p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2$3;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 433
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
