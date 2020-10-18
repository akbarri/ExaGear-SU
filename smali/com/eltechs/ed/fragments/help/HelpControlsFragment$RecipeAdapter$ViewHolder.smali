.class public Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HelpControlsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImage:Landroid/widget/ImageView;

.field public mItem:Lcom/eltechs/ed/controls/Controls;

.field public mText:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;

.field final synthetic this$1:Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->this$1:Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    iput-object p2, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f090091

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0900fc

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    return-void
.end method
