.class Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$2;
.super Ljava/lang/Object;
.source "ViewOfXServer.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowContentModificationListener;


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

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$2;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$2;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$300(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;IIII)V

    return-void
.end method

.method public frontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$2;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {v0, p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$400(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method
