.class Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCustomizationPackageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private final myViews:[Landroid/view/View;

.field final synthetic this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;


# direct methods
.method private constructor <init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->getCount()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->myViews:[Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;-><init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getPurchasableComponentsCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 84
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->myViews:[Landroid/view/View;

    aget-object p2, p2, p1

    if-eqz p2, :cond_0

    .line 86
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->myViews:[Landroid/view/View;

    aget-object p1, p2, p1

    return-object p1

    .line 89
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    invoke-virtual {p2}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {p2}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object p2

    .line 90
    invoke-virtual {p2, p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getPurchasableComponent(I)Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object p2

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    sget v1, Lcom/eltechs/axs/R$layout;->select_customization_package_elem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lcom/eltechs/axs/R$id;->select_cp_button_elem:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->this$0:Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;

    sget v3, Lcom/eltechs/axs/R$string;->like_textelem:I

    invoke-virtual {v1, v3}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/eltechs/axs/payments/PurchasableComponent;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v1, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$1;-><init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;Lcom/eltechs/axs/payments/PurchasableComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v0, Lcom/eltechs/axs/R$id;->select_cp_button_info:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    new-instance v1, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter$2;-><init>(Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;Lcom/eltechs/axs/payments/PurchasableComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectCustomizationPackageActivity$MyAdapter;->myViews:[Landroid/view/View;

    aput-object p3, p2, p1

    return-object p3
.end method
