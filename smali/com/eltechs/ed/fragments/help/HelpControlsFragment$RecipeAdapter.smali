.class Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HelpControlsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/help/HelpControlsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/Controls;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/ed/fragments/help/HelpControlsFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/help/HelpControlsFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/Controls;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->this$0:Lcom/eltechs/ed/fragments/help/HelpControlsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/ed/controls/Controls;

    iput-object p2, p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/Controls;

    .line 74
    iget-object p2, p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0800ab

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object p2, p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/controls/Controls;

    invoke-virtual {v0}, Lcom/eltechs/ed/controls/Controls;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p2, p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->this$0:Lcom/eltechs/ed/fragments/help/HelpControlsFragment;

    invoke-virtual {v0}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030044

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object p2, p1, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$1;-><init>(Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter$ViewHolder;-><init>(Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;Landroid/view/View;)V

    return-object p2
.end method
