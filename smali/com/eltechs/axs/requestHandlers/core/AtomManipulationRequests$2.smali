.class Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$2;
.super Ljava/lang/Object;
.source "AtomManipulationRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;->GetAtomName(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Atom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;

.field final synthetic val$nameLength:S


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;S)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$2;->this$0:Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;

    iput-short p2, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$2;->val$nameLength:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 64
    iget-short v0, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$2;->val$nameLength:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
