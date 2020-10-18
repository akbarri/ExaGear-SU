.class public Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;
.super Ljava/lang/Object;
.source "SimpleMouseMoveAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# instance fields
.field private final per:Lcom/eltechs/axs/PointerEventReporter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    return-void
.end method


# virtual methods
.method public moveTo(FF)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/SimpleMouseMoveAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    return-void
.end method

.method public prepareMoving(FF)V
    .locals 0

    return-void
.end method
