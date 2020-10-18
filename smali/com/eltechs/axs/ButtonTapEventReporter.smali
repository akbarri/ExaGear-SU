.class public Lcom/eltechs/axs/ButtonTapEventReporter;
.super Ljava/lang/Object;
.source "ButtonTapEventReporter.java"

# interfaces
.implements Lcom/eltechs/axs/ButtonTapEventListener;


# instance fields
.field private final keyCodes:[Lcom/eltechs/axs/KeyCodesX;

.field private final keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;


# direct methods
.method public varargs constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;[Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/ButtonTapEventReporter;->keyCodes:[Lcom/eltechs/axs/KeyCodesX;

    .line 24
    new-instance p2, Lcom/eltechs/axs/KeyEventReporter;

    invoke-direct {p2, p1}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    iput-object p2, p0, Lcom/eltechs/axs/ButtonTapEventReporter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    return-void
.end method


# virtual methods
.method public tapped()V
    .locals 8

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/ButtonTapEventReporter;->keyCodes:[Lcom/eltechs/axs/KeyCodesX;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 32
    iget-object v5, p0, Lcom/eltechs/axs/ButtonTapEventReporter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/eltechs/axs/KeyCodesX;

    aput-object v4, v7, v1

    invoke-virtual {v5, v7}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysPress([Lcom/eltechs/axs/KeyCodesX;)V

    .line 33
    iget-object v5, p0, Lcom/eltechs/axs/ButtonTapEventReporter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    new-array v6, v6, [Lcom/eltechs/axs/KeyCodesX;

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysRelease([Lcom/eltechs/axs/KeyCodesX;)V

    const-wide/16 v4, 0x32

    .line 34
    :try_start_0
    invoke-static {v4, v5, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
