.class Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;
.super Ljava/lang/Object;
.source "GLXRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->GetVisualConfigs(Lcom/eltechs/axs/xconnectors/XResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

.field final synthetic val$visualConfigSize:I

.field final synthetic val$visuals:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;Ljava/util/Collection;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;->this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;->val$visuals:Ljava/util/Collection;

    iput p3, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;->val$visualConfigSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;->val$visuals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    iget v0, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$4;->val$visualConfigSize:I

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
