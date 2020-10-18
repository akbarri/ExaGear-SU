.class public Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChooseXDGLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mButton:Landroid/widget/ImageButton;

.field public mImage:Landroid/widget/ImageView;

.field public mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

.field public mSubText:Landroid/widget/TextView;

.field public mText:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;

.field final synthetic this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;Landroid/view/View;I)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->this$1:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    .line 461
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 462
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f090091

    .line 463
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0900fc

    .line 464
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const p1, 0x7f0900f8

    .line 465
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    const p1, 0x7f090035

    .line 466
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
