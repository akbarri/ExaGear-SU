.class Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$2;
.super Ljava/lang/Object;
.source "DrawingRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;->GetImage(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;Lcom/eltechs/axs/xserver/Drawable;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;[B)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$2;->this$0:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$2;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$2;->val$data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
