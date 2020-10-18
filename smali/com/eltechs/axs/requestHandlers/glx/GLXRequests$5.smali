.class Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$5;
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

.field final synthetic val$visuals:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;Ljava/util/Collection;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$5;->this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$5;->val$visuals:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$5;->val$visuals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 143
    new-instance v2, Lcom/eltechs/axs/proto/output/replies/VisualConfig;

    invoke-direct {v2, v1}, Lcom/eltechs/axs/proto/output/replies/VisualConfig;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    invoke-static {p1, v2}, Lcom/eltechs/axs/proto/output/PODWriter;->write(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
