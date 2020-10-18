.class Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$3;
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

.field final synthetic val$atom:Lcom/eltechs/axs/xserver/Atom;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$3;->this$0:Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$3;->val$atom:Lcom/eltechs/axs/xserver/Atom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$3;->val$atom:Lcom/eltechs/axs/xserver/Atom;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Atom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;->access$000()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
