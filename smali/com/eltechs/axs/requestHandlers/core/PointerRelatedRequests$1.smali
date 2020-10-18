.class Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;
.super Ljava/lang/Object;
.source "PointerRelatedRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->QueryPointer(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;

.field final synthetic val$child:Lcom/eltechs/axs/xserver/Window;

.field final synthetic val$p:Lcom/eltechs/axs/xserver/Pointer;

.field final synthetic val$pointerInWinCoords:Lcom/eltechs/axs/geom/Point;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Pointer;Lcom/eltechs/axs/geom/Point;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$child:Lcom/eltechs/axs/xserver/Window;

    iput-object p3, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$p:Lcom/eltechs/axs/xserver/Pointer;

    iput-object p4, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$pointerInWinCoords:Lcom/eltechs/axs/geom/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;

    invoke-static {v0}, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->access$000(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;)Lcom/eltechs/axs/xserver/XServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$child:Lcom/eltechs/axs/xserver/Window;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$child:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$p:Lcom/eltechs/axs/xserver/Pointer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$p:Lcom/eltechs/axs/xserver/Pointer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$pointerInWinCoords:Lcom/eltechs/axs/geom/Point;

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->val$pointerInWinCoords:Lcom/eltechs/axs/geom/Point;

    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;

    invoke-static {v0}, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->access$100(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;)Lcom/eltechs/axs/xserver/XServer;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
