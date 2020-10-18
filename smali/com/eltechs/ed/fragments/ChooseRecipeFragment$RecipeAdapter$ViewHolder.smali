.class public Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChooseRecipeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImage:Landroid/widget/ImageView;

.field public mItem:Lcom/eltechs/ed/InstallRecipe;

.field public mText:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;

.field final synthetic this$1:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->this$1:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;

    .line 133
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 134
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f090091

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0900fc

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    return-void
.end method
