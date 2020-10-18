.class public Lcom/eltechs/ed/fragments/help/HelpControlsFragment;
.super Landroid/support/v4/app/Fragment;
.source "HelpControlsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;
    }
.end annotation


# instance fields
.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    iget-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;

    invoke-static {}, Lcom/eltechs/ed/controls/Controls;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment$RecipeAdapter;-><init>(Lcom/eltechs/ed/fragments/help/HelpControlsFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b001d

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f09009b

    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iget-object p2, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 42
    iget-object p3, p0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method
