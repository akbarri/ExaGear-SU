.class Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;
.super Ljava/lang/Object;
.source "RtsUIOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;

.field final synthetic val$btn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;Landroid/widget/Button;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;->this$1:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;->val$btn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;->this$1:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;

    iget-object v1, p0, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay$4$1;->val$btn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/RtsUIOverlay;->setButtonStyleByState(Landroid/widget/Button;Z)V

    return-void
.end method
