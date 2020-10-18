.class public Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;
.super Ljava/lang/Object;
.source "PressAndReleaseWithModifierKeyMouseClickAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapter;


# instance fields
.field private final buttonCode:I

.field private final ker:Lcom/eltechs/axs/KeyEventReporter;

.field private final keyCode:Lcom/eltechs/axs/KeyCodesX;

.field private final per:Lcom/eltechs/axs/PointerEventReporter;

.field private final sleepMs:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;IILcom/eltechs/axs/KeyEventReporter;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    .line 27
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->buttonCode:I

    .line 28
    iput p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->sleepMs:I

    .line 29
    iput-object p4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->ker:Lcom/eltechs/axs/KeyEventReporter;

    .line 30
    iput-object p5, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    return-void
.end method


# virtual methods
.method public click()V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->ker:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysPress([Lcom/eltechs/axs/KeyCodesX;)V

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->per:Lcom/eltechs/axs/PointerEventReporter;

    iget v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->buttonCode:I

    iget v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->sleepMs:I

    invoke-virtual {v0, v2, v3}, Lcom/eltechs/axs/PointerEventReporter;->click(II)V

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->ker:Lcom/eltechs/axs/KeyEventReporter;

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    iget-object v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/PressAndReleaseWithModifierKeyMouseClickAdapter;->keyCode:Lcom/eltechs/axs/KeyCodesX;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysRelease([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method public finalizeClick()V
    .locals 0

    return-void
.end method
