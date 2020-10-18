.class Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ManageContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ManageContainersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/guestContainers/GuestContainer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/guestContainers/GuestContainer;",
            ">;)V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$700(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;)Ljava/util/List;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 251
    check-cast p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/ed/guestContainers/GuestContainer;

    iput-object p2, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 271
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p2}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$400(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getCurrentContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$400(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getCurrentContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 275
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mView:Landroid/view/View;

    const v0, 0x7f06005e

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    :cond_0
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;
    .locals 2

    .line 263
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b001f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 264
    new-instance p2, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;Landroid/view/View;)V

    return-object p2
.end method
