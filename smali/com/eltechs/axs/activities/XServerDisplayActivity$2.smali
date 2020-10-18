.class Lcom/eltechs/axs/activities/XServerDisplayActivity$2;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/XServerDisplayActivity;->addDefaultPopupMenu(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

.field final synthetic val$popupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$2;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    iput-object p2, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$2;->val$popupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$2;->val$popupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->show()V

    return-void
.end method
