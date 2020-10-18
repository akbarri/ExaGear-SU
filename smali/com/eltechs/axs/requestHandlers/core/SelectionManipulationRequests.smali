.class public Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "SelectionManipulationRequests.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public ConvertSelection(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;I)V
    .locals 7
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "ATOMS_MANAGER",
            "SELECTIONS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getSelectionsManager()Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    move-result-object v0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->convertSelection(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;I)V

    return-void
.end method

.method public GetSelectionOwner(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 0
    .param p3    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "ATOMS_MANAGER",
            "SELECTIONS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getSelectionsManager()Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->getSelectionOwner(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p1

    .line 47
    new-instance p3, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;

    invoke-direct {p3, p0, p1}, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;Lcom/eltechs/axs/xserver/Window;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public SetSelectionOwner(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;I)V
    .locals 0
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "ATOMS_MANAGER",
            "SELECTIONS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object p2, p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getSelectionsManager()Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    move-result-object p2

    invoke-virtual {p2, p4, p3, p1, p5}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->setSelectionOwner(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClient;I)V

    return-void
.end method
