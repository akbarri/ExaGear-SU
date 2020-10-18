.class Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;
.super Ljava/lang/Object;
.source "ViewOfXServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->queueWindowMapped(Lcom/eltechs/axs/xserver/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field final synthetic val$window:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    iput-object p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;->val$window:Lcom/eltechs/axs/xserver/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$800(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$7;->val$window:Lcom/eltechs/axs/xserver/Window;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/viewOfXServer/AXSRendererGL;->windowMapped(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method
