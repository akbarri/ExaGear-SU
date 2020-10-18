.class public Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;
.super Ljava/lang/Object;
.source "PressAndReleaseMouseClickAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;


# instance fields
.field private final buttonCode:I

.field private final per:Lcom/eltechs/axs/PointerEventReporter;

.field private final sleepMs:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    .line 19
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;->buttonCode:I

    .line 20
    iput p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;->sleepMs:I

    return-void
.end method


# virtual methods
.method public click()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;->buttonCode:I

    iget v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseMouseClickAdapter;->sleepMs:I

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerEventReporter;->click(II)V

    return-void
.end method

.method public finalizeClick()V
    .locals 0

    return-void
.end method
