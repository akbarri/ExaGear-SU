.class public Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChooseXDGLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;,
        Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;,
        Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;
    }
.end annotation


# static fields
.field public static final ARG_IS_START_MENU:Ljava/lang/String; = "IS_START_MENU"

.field private static final PARENT_DIR_NAME:Ljava/lang/String; = ".."

.field private static final VIEW_TYPE_FOLDER:I = 0x1

.field private static final VIEW_TYPE_LINK:I


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

.field private mCurrentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

.field private mDepth:I

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

.field private mIsStartMenu:Z

.field private mListener:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    return-object p0
.end method

.method static synthetic access$208(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    return v0
.end method

.method static synthetic access$210(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    return v0
.end method

.method static synthetic access$300(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    return-object p0
.end method

.method static synthetic access$302(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;)Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getCurrentNodeContent()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mListener:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mIsStartMenu:Z

    return p0
.end method

.method static synthetic access$900(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->refresh()V

    return-void
.end method

.method private getCurrentNodeContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            ">;"
        }
    .end annotation

    .line 263
    iget v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getRootNodeContent()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getNodeContent(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;Z)Ljava/util/List;

    move-result-object v0

    .line 271
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private refresh()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getCurrentNodeContent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    goto :goto_0

    .line 284
    :cond_0
    iput v1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    .line 286
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getCurrentNodeContent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method getNodeContent(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 228
    new-instance p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    new-instance v3, Ljava/io/File;

    const-string v4, ".."

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p0, v2, v3, v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;Lcom/eltechs/ed/XDGLink;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 236
    :cond_1
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    new-instance v5, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v6, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {v5, p0, v6, v4, v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;Lcom/eltechs/ed/XDGLink;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".desktop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    :try_start_0
    new-instance v5, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v6, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    new-instance v7, Lcom/eltechs/ed/XDGLink;

    iget-object v8, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {v7, v8, v4}, Lcom/eltechs/ed/XDGLink;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;)V

    invoke-direct {v5, p0, v6, v4, v7}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;Lcom/eltechs/ed/XDGLink;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method getRootNodeContent()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getCurrentContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 202
    new-instance v3, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    new-instance v4, Ljava/io/File;

    iget-boolean v5, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mIsStartMenu:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mStartMenuPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mDesktopPath:Ljava/lang/String;

    :goto_0
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;Lcom/eltechs/ed/XDGLink;)V

    .line 203
    invoke-virtual {p0, v3, v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getNodeContent(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 207
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v3, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mContainers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 210
    new-instance v5, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    new-instance v6, Ljava/io/File;

    iget-boolean v7, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mIsStartMenu:Z

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/eltechs/ed/guestContainers/GuestContainer;->mStartMenuPath:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v7, v4, Lcom/eltechs/ed/guestContainers/GuestContainer;->mDesktopPath:Ljava/lang/String;

    :goto_2
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, p0, v4, v6, v2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;Lcom/eltechs/ed/XDGLink;)V

    .line 211
    invoke-virtual {p0, v5, v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getNodeContent(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 171
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getContainersList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mContainers:Ljava/util/List;

    .line 172
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_START_MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mIsStartMenu:Z

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mDepth:I

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentNode:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    .line 176
    invoke-direct {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getCurrentNodeContent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    .line 179
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mCurrentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iget-boolean v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mIsStartMenu:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d00a5

    goto :goto_1

    :cond_1
    const v0, 0x7f0d00a1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 136
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mListener:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 139
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnStartMenuLinkSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b001d

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f09009b

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f090079

    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mEmptyTextView:Landroid/widget/TextView;

    .line 157
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 159
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 161
    iget-object p3, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method
