.class Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;
.super Ljava/lang/Object;
.source "ExtensionInquiries.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;->QueryExtension(Lcom/eltechs/axs/xconnectors/XResponse;SSLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;

.field final synthetic val$handler:Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;->val$handler:Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;->val$handler:Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v1, v0

    .line 57
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;->val$handler:Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;->getAssignedMajorOpcode()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;->val$handler:Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;->getFirstAssignedEventId()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries$1;->val$handler:Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;

    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;->getFirstAssignedErrorId()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method
