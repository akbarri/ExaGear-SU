.class public Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;
.super Ljava/lang/Object;
.source "AXSPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;,
        Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;,
        Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;
    }
.end annotation


# instance fields
.field private final impl:Landroid/widget/PopupMenu;

.field private final menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->impl:Landroid/widget/PopupMenu;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    .line 36
    sget-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_4_4:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidFeatureTests;->haveAndroidApi(Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->impl:Landroid/widget/PopupMenu;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p3, Landroid/widget/PopupMenu;

    invoke-direct {p3, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->impl:Landroid/widget/PopupMenu;

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;

    invoke-direct {v1, p0, p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;-><init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;Lcom/eltechs/axs/widgets/actions/Action;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lcom/eltechs/axs/widgets/actions/ActionGroup;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;

    invoke-direct {v1, p0, p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;-><init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;Lcom/eltechs/axs/widgets/actions/ActionGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/widgets/actions/Action;

    .line 54
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->add(Lcom/eltechs/axs/widgets/actions/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;

    .line 68
    instance-of v2, v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;

    if-eqz v2, :cond_0

    .line 70
    check-cast v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;

    .line 71
    invoke-static {v1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->access$000(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;)Lcom/eltechs/axs/widgets/actions/Action;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    const-string v0, "Action %s is not a member of menu %s."

    const/4 v1, 0x2

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method public remove(Lcom/eltechs/axs/widgets/actions/ActionGroup;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;

    .line 87
    instance-of v2, v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;

    if-eqz v2, :cond_0

    .line 89
    check-cast v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;

    .line 90
    invoke-static {v1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->access$100(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;)Lcom/eltechs/axs/widgets/actions/ActionGroup;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    const-string v0, "Action %s is not a member of menu %s."

    const/4 v1, 0x2

    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->impl:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 108
    iget-object v1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;

    add-int/lit8 v4, v2, 0x1

    .line 110
    invoke-interface {v3, v0, v2}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;->addItemsToMenu(Landroid/view/Menu;I)V

    move v2, v4

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->impl:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
