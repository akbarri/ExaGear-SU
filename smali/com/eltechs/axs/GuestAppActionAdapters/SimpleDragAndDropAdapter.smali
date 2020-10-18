.class public Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;
.super Ljava/lang/Object;
.source "SimpleDragAndDropAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/DragAndDropAdapter;


# instance fields
.field private final cancellationHandler:Ljava/lang/Runnable;

.field private final clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

.field private final mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 24
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    .line 25
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->cancellationHandler:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel(FF)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->cancellationHandler:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public move(FF)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    return-void
.end method

.method public start(FF)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->prepareMoving(FF)V

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->mover:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    .line 33
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->click()V

    return-void
.end method

.method public stop(FF)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleDragAndDropAdapter;->clicker:Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;

    invoke-interface {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;->finalizeClick()V

    return-void
.end method
