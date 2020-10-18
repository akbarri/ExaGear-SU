.class Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;
.super Ljava/lang/Object;
.source "RtsUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    invoke-static {v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$000(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$002(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;Z)Z

    .line 51
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    invoke-static {v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->access$000(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    return-void
.end method
