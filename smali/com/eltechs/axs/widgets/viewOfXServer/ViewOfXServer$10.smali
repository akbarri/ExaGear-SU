.class Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;
.super Ljava/lang/Object;
.source "ViewOfXServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowContentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field final synthetic val$height:I

.field final synthetic val$width:I

.field final synthetic val$window:Lcom/eltechs/axs/xserver/Window;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    iput-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$window:Lcom/eltechs/axs/xserver/Window;

    iput p3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$x:I

    iput p4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$y:I

    iput p5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$width:I

    iput p6, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$800(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    move-result-object v1

    iget-object v2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$window:Lcom/eltechs/axs/xserver/Window;

    iget v3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$x:I

    iget v4, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$y:I

    iget v5, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$width:I

    iget v6, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$10;->val$height:I

    invoke-virtual/range {v1 .. v6}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V

    return-void
.end method
