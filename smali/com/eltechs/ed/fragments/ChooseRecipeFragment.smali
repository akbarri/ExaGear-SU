.class public Lcom/eltechs/ed/fragments/ChooseRecipeFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChooseRecipeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;,
        Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/ed/fragments/ChooseRecipeFragment;)Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mListener:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;

    sget-object v1, Lcom/eltechs/ed/InstallRecipe;->LIST:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$RecipeAdapter;-><init>(Lcom/eltechs/ed/fragments/ChooseRecipeFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 76
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0d00a3

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 40
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mListener:Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 43
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnRecipeSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b001d

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f09009b

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 61
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 65
    iget-object p3, p0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method
