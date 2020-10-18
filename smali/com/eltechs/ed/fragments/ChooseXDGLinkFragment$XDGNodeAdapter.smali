.class Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChooseXDGLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDGNodeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
            ">;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 303
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;)Ljava/util/List;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 297
    check-cast p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;I)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iput-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    .line 319
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    if-nez p2, :cond_0

    .line 321
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0800a2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-static {p2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;->access$000(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object p2

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    invoke-virtual {p2, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getIconPath(Lcom/eltechs/ed/XDGLink;)Ljava/lang/String;

    move-result-object p2

    .line 325
    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 328
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 330
    :goto_0
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    invoke-virtual {v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    invoke-virtual {v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->isUpNode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mItem:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$1;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object p2, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$2;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;
    .locals 3

    .line 309
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 310
    new-instance v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter$ViewHolder;-><init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNodeAdapter;Landroid/view/View;I)V

    return-object v0
.end method
