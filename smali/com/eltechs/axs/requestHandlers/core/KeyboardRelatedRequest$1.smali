.class Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest$1;
.super Ljava/lang/Object;
.source "KeyboardRelatedRequest.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;->GetKeyboardMapping(Lcom/eltechs/axs/xconnectors/XResponse;IIS)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;

.field final synthetic val$reply:[I


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;[I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest$1;->val$reply:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest$1;->val$reply:[I

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    return-void
.end method
