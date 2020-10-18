.class Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$1;
.super Ljava/lang/Object;
.source "AtomManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;->InternAtom(Lcom/eltechs/axs/xconnectors/XResponse;ZSSLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;I)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;

    iput p2, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$1;->val$id:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
