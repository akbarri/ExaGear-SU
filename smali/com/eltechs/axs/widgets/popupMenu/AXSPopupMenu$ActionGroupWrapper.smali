.class Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;
.super Ljava/lang/Object;
.source "AXSPopupMenu.java"

# interfaces
.implements Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$MenuItemWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionGroupWrapper"
.end annotation


# instance fields
.field private final actionGroup:Lcom/eltechs/axs/widgets/actions/ActionGroup;

.field final synthetic this$0:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;Lcom/eltechs/axs/widgets/actions/ActionGroup;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->this$0:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->actionGroup:Lcom/eltechs/axs/widgets/actions/ActionGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;)Lcom/eltechs/axs/widgets/actions/ActionGroup;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->actionGroup:Lcom/eltechs/axs/widgets/actions/ActionGroup;

    return-object p0
.end method


# virtual methods
.method public addItemsToMenu(Landroid/view/Menu;I)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->actionGroup:Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/widgets/actions/Action;

    add-int/lit8 v4, v2, 0x1

    .line 166
    invoke-interface {v3}, Lcom/eltechs/axs/widgets/actions/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v2, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 168
    invoke-interface {v3}, Lcom/eltechs/axs/widgets/actions/Action;->isEnabled()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 169
    invoke-interface {v3}, Lcom/eltechs/axs/widgets/actions/Action;->isChecked()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 171
    new-instance v5, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper$1;

    invoke-direct {v5, p0, v3}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper$1;-><init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;Lcom/eltechs/axs/widgets/actions/Action;)V

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v2, v4

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->actionGroup:Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->isCheckable()Z

    move-result v0

    iget-object v1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->actionGroup:Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-virtual {v1}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->isExclusive()Z

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method
