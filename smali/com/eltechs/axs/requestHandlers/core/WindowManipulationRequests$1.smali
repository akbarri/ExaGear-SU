.class Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;
.super Ljava/lang/Object;
.source "WindowManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;->TranslateCoordinates(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;

.field final synthetic val$childWindow:Lcom/eltechs/axs/xserver/Window;

.field final synthetic val$dstCoords:Lcom/eltechs/axs/geom/Point;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/geom/Point;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->val$childWindow:Lcom/eltechs/axs/xserver/Window;

    iput-object p3, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->val$dstCoords:Lcom/eltechs/axs/geom/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->val$childWindow:Lcom/eltechs/axs/xserver/Window;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->val$childWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 597
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->val$dstCoords:Lcom/eltechs/axs/geom/Point;

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 600
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$1;->val$dstCoords:Lcom/eltechs/axs/geom/Point;

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
