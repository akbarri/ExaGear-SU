.class public Lcom/eltechs/axs/MouseButtonEventReporter;
.super Ljava/lang/Object;
.source "MouseButtonEventReporter.java"

# interfaces
.implements Lcom/eltechs/axs/ButtonEventListener;


# instance fields
.field private final button:I

.field private final pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lcom/eltechs/axs/MouseButtonEventReporter;->button:I

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/MouseButtonEventReporter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    return-void
.end method


# virtual methods
.method public pressed()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/MouseButtonEventReporter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/MouseButtonEventReporter;->button:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    return-void
.end method

.method public released()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/MouseButtonEventReporter;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/MouseButtonEventReporter;->button:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    return-void
.end method
