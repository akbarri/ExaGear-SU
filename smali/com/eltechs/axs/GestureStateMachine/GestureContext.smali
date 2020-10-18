.class public Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.super Ljava/lang/Object;
.source "GestureContext.java"


# instance fields
.field private final host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

.field private final keyboardReporter:Lcom/eltechs/axs/KeyEventReporter;

.field private machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

.field private final pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

.field private final touchArea:Lcom/eltechs/axs/TouchArea;

.field private final touchMultiplexor:Lcom/eltechs/axs/TouchEventMultiplexor;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 38
    new-instance v0, Lcom/eltechs/axs/PointerEventReporter;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    .line 39
    new-instance v0, Lcom/eltechs/axs/KeyEventReporter;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->keyboardReporter:Lcom/eltechs/axs/KeyEventReporter;

    .line 40
    iput-object p2, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->touchArea:Lcom/eltechs/axs/TouchArea;

    .line 41
    iput-object p3, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->touchMultiplexor:Lcom/eltechs/axs/TouchEventMultiplexor;

    return-void
.end method


# virtual methods
.method public getFingerEventsSource()Lcom/eltechs/axs/TouchEventMultiplexor;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->touchMultiplexor:Lcom/eltechs/axs/TouchEventMultiplexor;

    return-object v0
.end method

.method public getFingers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->touchArea:Lcom/eltechs/axs/TouchArea;

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchArea;->getFingers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHostView()Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    return-object v0
.end method

.method public getKeyboardReporter()Lcom/eltechs/axs/KeyEventReporter;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->keyboardReporter:Lcom/eltechs/axs/KeyEventReporter;

    return-object v0
.end method

.method public getMachine()Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    return-object v0
.end method

.method public getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    return-object v0
.end method

.method public getTouchArea()Lcom/eltechs/axs/TouchArea;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->touchArea:Lcom/eltechs/axs/TouchArea;

    return-object v0
.end method

.method public getViewFacade()Lcom/eltechs/axs/xserver/ViewFacade;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object v0

    return-object v0
.end method

.method public getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->host:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getZoomController()Lcom/eltechs/axs/widgets/viewOfXServer/XZoomController;

    move-result-object v0

    return-object v0
.end method

.method public setMachine(Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->machine:Lcom/eltechs/axs/finiteStateMachine/FiniteStateMachine;

    return-void
.end method
