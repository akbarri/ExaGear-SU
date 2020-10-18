.class public Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ControlsInfoDFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBodyText:Landroid/widget/TextView;

.field public mHeader:Landroid/widget/TextView;

.field public mImage:Landroid/widget/ImageView;

.field public mItem:Lcom/eltechs/ed/controls/ControlsInfoElem;

.field public final mView:Landroid/view/View;

.field final synthetic this$1:Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;Landroid/view/View;I)V
    .locals 3

    .line 135
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->this$1:Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;

    .line 136
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f090091

    .line 138
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f090089

    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mHeader:Landroid/widget/TextView;

    const p1, 0x7f090062

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mBodyText:Landroid/widget/TextView;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    const/16 p3, 0x8

    invoke-static {p3}, Lcom/eltechs/axs/helpers/AndroidHelpers;->dpToPx(I)I

    move-result v0

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/eltechs/axs/helpers/AndroidHelpers;->dpToPx(I)I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mHeader:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 148
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter$ViewHolder;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method
