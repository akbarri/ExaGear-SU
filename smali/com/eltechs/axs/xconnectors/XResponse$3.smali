.class Lcom/eltechs/axs/xconnectors/XResponse$3;
.super Ljava/lang/Object;
.source "XResponse.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/BufferFiller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xconnectors/XResponse;->sendEvent(BBLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xconnectors/XResponse;

.field final synthetic val$writer:Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse$3;->this$0:Lcom/eltechs/axs/xconnectors/XResponse;

    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse$3;->val$writer:Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XResponse$3;->val$writer:Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 183
    invoke-static {}, Lcom/eltechs/axs/xconnectors/XResponse;->access$000()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
