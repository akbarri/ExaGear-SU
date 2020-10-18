.class Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;
.super Ljava/lang/Object;
.source "DrawablesManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;->QueryBestSize(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;Lcom/eltechs/axs/xserver/Drawable;SS)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;

.field final synthetic val$height:S

.field final synthetic val$width:S


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;SS)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;->this$0:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;

    iput-short p2, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;->val$width:S

    iput-short p3, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;->val$height:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 76
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;->val$width:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$2;->val$height:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
