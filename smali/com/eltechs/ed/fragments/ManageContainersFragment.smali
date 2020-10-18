.class public Lcom/eltechs/ed/fragments/ManageContainersFragment;
.super Landroid/support/v4/app/Fragment;
.source "ManageContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;,
        Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;,
        Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;
    }
.end annotation


# static fields
.field private static final CONT_ASYNC_ACTION_CLONE:I = 0x1

.field private static final CONT_ASYNC_ACTION_DELETE:I = 0x2

.field private static final CONT_ASYNC_ACTION_NEW:I


# instance fields
.field private mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/guestContainers/GuestContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

.field private mIsAsyncTaskRun:Z

.field private mListener:Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressMessage:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/eltechs/ed/fragments/ManageContainersFragment;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mIsAsyncTaskRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/eltechs/ed/fragments/ManageContainersFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->showProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eltechs/ed/fragments/ManageContainersFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->refreshContainersList()V

    return-void
.end method

.method static synthetic access$600(Lcom/eltechs/ed/fragments/ManageContainersFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->closeProgressDialog(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic access$800(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mListener:Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;

    return-object p0
.end method

.method private closeProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    .line 180
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method private refreshContainersList()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getContainersList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mContainers:Ljava/util/List;

    .line 161
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mContainers:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mEmptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    .line 170
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 173
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 174
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 144
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->refreshContainersList()V

    .line 146
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0d00a2

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 149
    iget-boolean p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mIsAsyncTaskRun:Z

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->showProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 70
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mListener:Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 73
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnManageContainersActionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->setHasOptionsMenu(Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0004

    .line 90
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b001d

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f09009b

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f090079

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mEmptyTextView:Landroid/widget/TextView;

    .line 118
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 120
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 122
    iget-object p3, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a1

    if-eq v0, v1, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 100
    :cond_0
    new-instance p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment;I)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/eltechs/ed/guestContainers/GuestContainer;

    const/4 v3, 0x0

    check-cast v3, Lcom/eltechs/ed/guestContainers/GuestContainer;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1
.end method
