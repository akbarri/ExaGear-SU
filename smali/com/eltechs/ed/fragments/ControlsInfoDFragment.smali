.class public Lcom/eltechs/ed/fragments/ControlsInfoDFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ControlsInfoDFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;
    }
.end annotation


# static fields
.field public static final ARG_CONTROLS_ID:Ljava/lang/String; = "CONTROLS_ID"

.field private static final VIEW_TYPE_NO_IMAGE:I = 0x1

.field private static final VIEW_TYPE_REGULAR:I


# instance fields
.field private mControls:Lcom/eltechs/ed/controls/Controls;

.field private mImageRes:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/ControlsInfoElem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment$ControlsInfoAdapter;-><init>(Lcom/eltechs/ed/fragments/ControlsInfoDFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget-object v0, v0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/controls/ControlsInfoElem;

    iget-object v0, v0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mDescrText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mImageRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CONTROLS_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/eltechs/ed/controls/Controls;->find(Ljava/lang/String;)Lcom/eltechs/ed/controls/Controls;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mControls:Lcom/eltechs/ed/controls/Controls;

    .line 46
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mControls:Lcom/eltechs/ed/controls/Controls;

    invoke-virtual {p1}, Lcom/eltechs/ed/controls/Controls;->getInfoElems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mItems:Ljava/util/List;

    .line 47
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mControls:Lcom/eltechs/ed/controls/Controls;

    invoke-virtual {p1}, Lcom/eltechs/ed/controls/Controls;->getInfoImage()I

    move-result p1

    iput p1, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mImageRes:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 55
    iget-object p3, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mItems:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    const p3, 0x7f0b001d

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f09009b

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 59
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ControlsInfoDFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object p1

    :cond_0
    const p3, 0x7f0b0023

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    return-object p1
.end method
