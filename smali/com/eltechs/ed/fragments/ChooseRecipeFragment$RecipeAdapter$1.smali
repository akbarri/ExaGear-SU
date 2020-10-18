.class Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;
.super Ljava/lang/Object;
.source "ChooseRecipeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;

.field final synthetic val$holder:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;->val$holder:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->access$000(Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;->val$holder:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/ed/InstallRecipe;

    .line 113
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseRecipeFragment;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->access$100(Lcom/eltechs/ed/fragments/ChooseRecipeFragment;)Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;->onRecipeSelected(Lcom/eltechs/ed/InstallRecipe;)V

    return-void
.end method
