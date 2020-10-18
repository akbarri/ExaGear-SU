.class public Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;
.super Ljava/lang/Object;
.source "SimpleMousePointAndClickAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;


# instance fields
.field private final clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private final mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private final pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    .line 21
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    return-void
.end method


# virtual methods
.method public click(FF)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    const-wide/16 p1, 0x14

    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {p1, p2, v0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->click()V

    return-void
.end method

.method public finalizeClick(FF)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->finalizeClick()V

    .line 36
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMousePointAndClickAdapter;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    sget-object p2, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->TAP:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->setLastMoveMethod(Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;)V

    return-void
.end method
