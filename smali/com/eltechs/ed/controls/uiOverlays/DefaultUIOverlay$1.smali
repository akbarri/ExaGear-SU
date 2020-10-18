.class Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createToolbar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

.field final synthetic val$buttonFullscreen:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Landroid/widget/ImageButton;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;->val$buttonFullscreen:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object p1, p1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->isHorizontalStretchEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 133
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mViewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->setHorizontalStretchEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$1;->val$buttonFullscreen:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const p1, 0x7f0800a4

    goto :goto_0

    :cond_0
    const p1, 0x7f0800a3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method
