.class Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$1;
.super Ljava/lang/Object;
.source "MITShmRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;->QueryVersion(Lcom/eltechs/axs/xconnectors/XResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
