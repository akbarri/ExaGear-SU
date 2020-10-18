.class Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;
.super Ljava/lang/Object;
.source "ChoosePackagesDFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/ed/ContainerPackage;

    .line 98
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 99
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->mSelectedItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->mSelectedItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    invoke-virtual {p1}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    iget-object p2, p2, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->mSelectedItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
