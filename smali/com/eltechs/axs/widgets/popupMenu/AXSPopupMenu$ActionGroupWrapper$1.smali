.class Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper$1;
.super Ljava/lang/Object;
.source "AXSPopupMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;->addItemsToMenu(Landroid/view/Menu;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;

.field final synthetic val$a:Lcom/eltechs/axs/widgets/actions/Action;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper$1;->this$1:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper;

    iput-object p2, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper$1;->val$a:Lcom/eltechs/axs/widgets/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionGroupWrapper$1;->val$a:Lcom/eltechs/axs/widgets/actions/Action;

    invoke-interface {p1}, Lcom/eltechs/axs/widgets/actions/Action;->run()V

    const/4 p1, 0x1

    return p1
.end method
