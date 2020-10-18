.class public Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ManageContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mButton:Landroid/widget/ImageButton;

.field public mImage:Landroid/widget/ImageView;

.field public mItem:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field public mSubText:Landroid/widget/TextView;

.field public mText:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;

.field final synthetic this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;Landroid/view/View;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    .line 349
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 350
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f090091

    .line 351
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0900fc

    .line 352
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const p1, 0x7f0900f8

    .line 353
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    const p1, 0x7f090035

    .line 354
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    .line 356
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$ViewHolder;->mView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
