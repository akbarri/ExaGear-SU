.class public Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "SelectCustomizationPackageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CP_DRAWABLE:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->logDebug(Ljava/lang/String;)V

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/eltechs/axs/activities/FrameworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->requestWindowFeature(I)Z

    .line 38
    sget p1, Lcom/eltechs/axs/R$layout;->select_customization_package:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->resizeRootViewToStandardDialogueSize()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 45
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onResume()V

    .line 47
    sget v0, Lcom/eltechs/axs/R$id;->list_of_all_customization_packages:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 48
    new-instance v1, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;-><init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
