.class Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;
.super Ljava/lang/Object;
.source "ManageContainersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

.field final synthetic val$holder:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->val$holder:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->access$700(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->val$holder:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 285
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object v2, v2, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-virtual {v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0c0001

    .line 286
    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 288
    new-instance p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;

    invoke-direct {p1, p0, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 318
    new-instance p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$2;

    invoke-direct {p1, p0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$2;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 327
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
