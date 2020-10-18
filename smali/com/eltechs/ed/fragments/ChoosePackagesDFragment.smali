.class public Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ChoosePackagesDFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;

.field mSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/ContainerPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->mListener:Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 49
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnPackagesSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->mSelectedItems:Ljava/util/List;

    .line 61
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Select packages"

    .line 62
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 63
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/eltechs/ed/ContainerPackage;->LIST:Ljava/util/List;

    const v4, 0x7f0b003e

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$2;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$2;-><init>(Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;)V

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$1;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$1;-><init>(Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$3;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$3;-><init>(Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 92
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$4;-><init>(Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method
