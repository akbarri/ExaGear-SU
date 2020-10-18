.class Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChooseFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ChooseFileFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ChooseFileFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseFileFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;)Ljava/util/List;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 181
    check-cast p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;I)V
    .locals 2

    .line 201
    invoke-virtual {p0, p2}, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mItem:Ljava/io/File;

    .line 208
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mItem:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mItem:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f08009f

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f0800a2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mItem:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$1;-><init>(Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;
    .locals 3

    .line 193
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 194
    new-instance v0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;-><init>(Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;Landroid/view/View;I)V

    return-object v0
.end method
