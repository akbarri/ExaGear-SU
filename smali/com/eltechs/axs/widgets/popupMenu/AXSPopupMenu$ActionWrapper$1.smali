.class Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper$1;
.super Ljava/lang/Object;
.source "AXSPopupMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->addItemsToMenu(Landroid/view/Menu;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper$1;->this$1:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper$1;->this$1:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;->access$000(Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu$ActionWrapper;)Lcom/eltechs/axs/widgets/actions/Action;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/widgets/actions/Action;->run()V

    const/4 p1, 0x1

    return p1
.end method
