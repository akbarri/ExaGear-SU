.class Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$3;
.super Ljava/lang/Object;
.source "ViewOfXServer.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/PointerListener;


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

    .line 65
    iput-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$3;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pointerButtonPressed(I)V
    .locals 0

    return-void
.end method

.method public pointerButtonReleased(I)V
    .locals 0

    return-void
.end method

.method public pointerMoved(II)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$3;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$500(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    return-void
.end method

.method public pointerWarped(II)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer$3;->this$0:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-static {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->access$500(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    return-void
.end method
