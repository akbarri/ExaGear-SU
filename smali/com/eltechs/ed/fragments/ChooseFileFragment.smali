.class public Lcom/eltechs/ed/fragments/ChooseFileFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChooseFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;,
        Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;
    }
.end annotation


# static fields
.field public static final ARG_DOWNLOAD_URL:Ljava/lang/String; = "DOWNLOAD_URL"

.field public static final ARG_ROOT_PATH:Ljava/lang/String; = "ROOT_PATH"

.field private static final NO_EXE_FILES:Ljava/lang/String;

.field private static final PARENT_DIR_NAME:Ljava/lang/String; = ".."

.field private static final VIEW_TYPE_NO_EXE:I = 0x1

.field private static final VIEW_TYPE_REGULAR:I


# instance fields
.field private mCurrentDir:Ljava/io/File;

.field private mCurrentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadUrl:Ljava/lang/String;

.field private mListener:Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0d009f

    .line 43
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->NO_EXE_FILES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/ed/fragments/ChooseFileFragment;)Ljava/io/File;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$102(Lcom/eltechs/ed/fragments/ChooseFileFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eltechs/ed/fragments/ChooseFileFragment;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/eltechs/ed/fragments/ChooseFileFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/eltechs/ed/fragments/ChooseFileFragment;)Ljava/io/File;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRootDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eltechs/ed/fragments/ChooseFileFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eltechs/ed/fragments/ChooseFileFragment;)Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mListener:Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->NO_EXE_FILES:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getDirContent(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 152
    new-instance p2, Ljava/io/File;

    const-string v2, ".."

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    aget-object v3, p1, v2

    .line 157
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".exe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".msi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".bat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 169
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 176
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/eltechs/ed/fragments/ChooseFileFragment;->NO_EXE_FILES:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ROOT_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRootDir:Ljava/io/File;

    .line 130
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRootDir:Ljava/io/File;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentDir:Ljava/io/File;

    .line 131
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentDir:Ljava/io/File;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRootDir:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->getDirContent(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentItems:Ljava/util/List;

    .line 133
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mCurrentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;-><init>(Lcom/eltechs/ed/fragments/ChooseFileFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0d00a4

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 69
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mListener:Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 72
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFileSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DOWNLOAD_URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mDownloadUrl:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mDownloadUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->setHasOptionsMenu(Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f0c0000

    .line 91
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b001d

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f09009b

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 115
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 119
    iget-object p3, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090046

    if-eq v0, v1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 101
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
