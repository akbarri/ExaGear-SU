.class public Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChooseFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImage:Landroid/widget/ImageView;

.field public mItem:Ljava/io/File;

.field public mText:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;

.field final synthetic this$1:Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;Landroid/view/View;I)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->this$1:Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter;

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 262
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mView:Landroid/view/View;

    const p1, 0x7f090091

    .line 263
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const p1, 0x7f0900fc

    .line 264
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-static {}, Lcom/eltechs/ed/fragments/ChooseFileFragment;->access$600()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChooseFileFragment$FileAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
