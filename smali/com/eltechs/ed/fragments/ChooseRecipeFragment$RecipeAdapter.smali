.class Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChooseRecipeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseRecipeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/InstallRecipe;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ChooseRecipeFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ChooseRecipeFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/InstallRecipe;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseRecipeFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 79
    check-cast p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/InstallRecipe;

    iput-object v0, p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/InstallRecipe;

    .line 99
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 101
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0800a5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f08009f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_0
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/InstallRecipe;

    invoke-virtual {v0}, Lcom/eltechs/ed/InstallRecipe;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;-><init>(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p2, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;-><init>(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;Landroid/view/View;)V

    return-object p2
.end method
