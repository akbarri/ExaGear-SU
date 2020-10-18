.class Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$3;
.super Ljava/lang/Object;
.source "ChoosePackagesDFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 83
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$3;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$3;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    invoke-virtual {p1}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$3;->this$0:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    iget-object v0, v0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->mSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
