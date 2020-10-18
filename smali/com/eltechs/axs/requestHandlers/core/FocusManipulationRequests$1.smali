.class Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests$1;
.super Ljava/lang/Object;
.source "FocusManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;->GetInputFocus(Lcom/eltechs/axs/xconnectors/XResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;

.field final synthetic val$fid:I


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;

    iput p2, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests$1;->val$fid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 63
    iget v0, p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests$1;->val$fid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
