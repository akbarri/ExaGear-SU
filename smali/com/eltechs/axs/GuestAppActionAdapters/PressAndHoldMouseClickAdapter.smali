.class public Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;
.super Ljava/lang/Object;
.source "PressAndHoldMouseClickAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;


# instance fields
.field private final buttonCode:I

.field private final per:Lcom/eltechs/axs/PointerEventReporter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    .line 20
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;->buttonCode:I

    return-void
.end method


# virtual methods
.method public click()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;->buttonCode:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    return-void
.end method

.method public finalizeClick()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldMouseClickAdapter;->buttonCode:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    return-void
.end method
