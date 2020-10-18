.class public Lcom/eltechs/axs/ButtonEventReporter;
.super Ljava/lang/Object;
.source "ButtonEventReporter.java"

# interfaces
.implements Lcom/eltechs/axs/ButtonEventListener;


# instance fields
.field private final keyCodes:[Lcom/eltechs/axs/KeyCodesX;

.field private final keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;


# direct methods
.method public varargs constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/ButtonEventReporter;->keyCodes:[Lcom/eltechs/axs/KeyCodesX;

    .line 24
    new-instance p2, Lcom/eltechs/axs/KeyEventReporter;

    invoke-direct {p2, p1}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    iput-object p2, p0, Lcom/eltechs/axs/ButtonEventReporter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    return-void
.end method


# virtual methods
.method public pressed()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/ButtonEventReporter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    iget-object v1, p0, Lcom/eltechs/axs/ButtonEventReporter;->keyCodes:[Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysPress([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method public released()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/ButtonEventReporter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    iget-object v1, p0, Lcom/eltechs/axs/ButtonEventReporter;->keyCodes:[Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysRelease([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method
