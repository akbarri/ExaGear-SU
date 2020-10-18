.class Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ControlsInfoDFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ControlsInfoDFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/ControlsInfoElem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ControlsInfoDFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ControlsInfoDFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/ControlsInfoElem;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->this$0:Lcom/eltechs/ed/fragments/ControlsInfoDFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget p1, p1, Lcom/eltechs/ed/controls/ControlsInfoElem;->mImageRes:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 84
    check-cast p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/ed/controls/ControlsInfoElem;

    iput-object p2, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/ControlsInfoElem;

    .line 105
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget p2, p2, Lcom/eltechs/ed/controls/ControlsInfoElem;->mImageRes:I

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget v0, v0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mImageRes:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    :cond_0
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mHeader:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget-object v0, v0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mBodyText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget-object p1, p1, Lcom/eltechs/ed/controls/ControlsInfoElem;->mDescrText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance v0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;-><init>(Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;Landroid/view/View;I)V

    return-object v0
.end method
