.class public Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "AtomManipulationRequests.java"


# static fields
.field private static final latin1:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "latin1"

    .line 50
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;->latin1:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 21
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;->latin1:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public GetAtomName(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 3
    .param p2    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "ATOMS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/Atom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    .line 59
    new-instance v1, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$2;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$2;-><init>(Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;S)V

    new-instance v2, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$3;

    invoke-direct {v2, p0, p2}, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$3;-><init>(Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;Lcom/eltechs/axs/xserver/Atom;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public InternAtom(Lcom/eltechs/axs/xconnectors/XResponse;ZSSLjava/lang/String;)V
    .locals 0
    .param p2    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamName;
            value = "nameLength"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/ParamLength;
            value = "nameLength"
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "ATOMS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object p3, p0, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/XServer;->getAtomsManager()Lcom/eltechs/axs/xserver/AtomsManager;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p3, p5}, Lcom/eltechs/axs/xserver/AtomsManager;->getAtomId(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {p3, p5}, Lcom/eltechs/axs/xserver/AtomsManager;->internAtom(Ljava/lang/String;)I

    move-result p2

    :goto_0
    const/4 p3, 0x0

    .line 41
    new-instance p4, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$1;

    invoke-direct {p4, p0, p2}, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;I)V

    invoke-virtual {p1, p3, p4}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
