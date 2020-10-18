.class Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;
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

    .line 114
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;->this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    iput-object p2, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;->val$purchasableComponent:Lcom/eltechs/axs/payments/PurchasableComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 118
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;->val$purchasableComponent:Lcom/eltechs/axs/payments/PurchasableComponent;

    invoke-interface {p1}, Lcom/eltechs/axs/payments/PurchasableComponent;->getInfoResId()I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;->this$1:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;

    iget-object v0, v0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    const-class v1, Lcom/eltechs/axs/activities/UsageActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x2711

    invoke-virtual {v0, v2, v1, p1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->startActivityForResult(ILjava/lang/Class;Ljava/io/Serializable;)V

    return-void
.end method
