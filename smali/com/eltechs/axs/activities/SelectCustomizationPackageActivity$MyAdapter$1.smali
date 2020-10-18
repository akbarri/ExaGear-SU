.class Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;
.super Ljava/lang/Object;
.source "SelectCustomizationPackageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

.field final synthetic val$purchasableComponent:Lcom/eltechs/axs/payments/PurchasableComponent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;Lcom/eltechs/axs/payments/PurchasableComponent;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;->this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    iput-object p2, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;->val$purchasableComponent:Lcom/eltechs/axs/payments/PurchasableComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;->this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;->val$purchasableComponent:Lcom/eltechs/axs/payments/PurchasableComponent;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->setUserSelectedCustomizationPackage(Lcom/eltechs/axs/payments/PurchasableComponent;)V

    .line 106
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;->this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->setResult(I)V

    .line 107
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;->this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->finish()V

    return-void
.end method
