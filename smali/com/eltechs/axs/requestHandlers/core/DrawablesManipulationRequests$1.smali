.class Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;
.super Ljava/lang/Object;
.source "DrawablesManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;->GetGeometry(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;

.field final synthetic val$_borderWidth:S

.field final synthetic val$_x:S

.field final synthetic val$_y:S

.field final synthetic val$height:S

.field final synthetic val$rootWindow:Lcom/eltechs/axs/xserver/Window;

.field final synthetic val$width:S


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;Lcom/eltechs/axs/xserver/Window;SSSSS)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$rootWindow:Lcom/eltechs/axs/xserver/Window;

    iput-short p3, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$_x:S

    iput-short p4, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$_y:S

    iput-short p5, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$width:S

    iput-short p6, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$height:S

    iput-short p7, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$_borderWidth:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$rootWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$_x:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 56
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$_y:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 57
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$width:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 58
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$height:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 59
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$1;->val$_borderWidth:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
