.class Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;
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
    name = "ActionWrapper"
.end annotation


# instance fields
.field private final action:Lcom/eltechs/axs/widgets/actions/Action;

.field final synthetic this$0:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->this$0:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->action:Lcom/eltechs/axs/widgets/actions/Action;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;)Lcom/eltechs/axs/widgets/actions/Action;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->action:Lcom/eltechs/axs/widgets/actions/Action;

    return-object p0
.end method


# virtual methods
.method public addItemsToMenu(Landroid/view/Menu;I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->action:Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {v0}, Lcom/eltechs/axs/widgets/actions/Action;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->action:Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {p2}, Lcom/eltechs/axs/widgets/actions/Action;->isEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    iget-object p2, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->action:Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {p2}, Lcom/eltechs/axs/widgets/actions/Action;->isCheckable()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 138
    iget-object p2, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->action:Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {p2}, Lcom/eltechs/axs/widgets/actions/Action;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 140
    new-instance p2, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper$1;-><init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
