.class public Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;
.super Ljava/lang/Object;
.source "PressAndHoldWithPauseMouseClickAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;


# instance fields
.field private final buttonCode:I

.field private final per:Lcom/eltechs/axs/PointerEventReporter;

.field private final sleepMs:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    .line 23
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->buttonCode:I

    .line 24
    iput p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->sleepMs:I

    return-void
.end method


# virtual methods
.method public click()V
    .locals 2

    .line 30
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->buttonCode:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    .line 32
    :try_start_1
    iget v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public finalizeClick()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndHoldWithPauseMouseClickAdapter;->buttonCode:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    return-void
.end method
