.class Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;
.super Ljava/lang/Object;
.source "SelectionManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;->GetSelectionOwner(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Atom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;

.field final synthetic val$owner:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;->val$owner:Lcom/eltechs/axs/xserver/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;->val$owner:Lcom/eltechs/axs/xserver/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;->val$owner:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
