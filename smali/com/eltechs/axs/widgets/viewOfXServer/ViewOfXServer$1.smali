.class Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;
.super Ljava/lang/Object;
.source "ViewOfXServer.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public windowCreated(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$000(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public windowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$100(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$1;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$200(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method
