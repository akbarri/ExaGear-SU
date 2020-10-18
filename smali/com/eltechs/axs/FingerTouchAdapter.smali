.class public Lcom/eltechs/axs/FingerTouchAdapter;
.super Ljava/lang/Object;
.source "FingerTouchAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/PointerEventListener;


# instance fields
.field private final pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/FingerTouchAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    return-void
.end method


# virtual methods
.method public pointerEntered(FF)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/FingerTouchAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerEntered(FF)V

    return-void
.end method

.method public pointerExited(FF)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/FingerTouchAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerExited(FF)V

    .line 33
    iget-object p1, p0, Lcom/eltechs/axs/FingerTouchAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    const-wide/16 v0, 0xc8

    const/4 p1, 0x0

    .line 38
    :try_start_0
    invoke-static {v0, v1, p1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    iget-object p1, p0, Lcom/eltechs/axs/FingerTouchAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    return-void
.end method

.method public pointerMove(FF)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/FingerTouchAdapter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    return-void
.end method
