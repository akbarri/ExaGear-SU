.class Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$2;
.super Ljava/lang/Object;
.source "MITShmRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;->GetImage(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Drawable;IIIIILcom/eltechs/axs/requestHandlers/IncomingImageFormat;BBBLcom/eltechs/axs/xserver/ShmSegment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;

.field final synthetic val$visualId:I


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$2;->this$0:Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;

    iput p2, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$2;->val$visualId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 201
    iget v0, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$2;->val$visualId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
