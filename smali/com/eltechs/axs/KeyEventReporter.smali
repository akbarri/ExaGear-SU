.class public Lcom/eltechs/axs/KeyEventReporter;
.super Ljava/lang/Object;
.source "KeyEventReporter.java"


# instance fields
.field private final xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    return-void
.end method


# virtual methods
.method public reportKeyPressReleaseNoDelay(Lcom/eltechs/axs/KeyCodesX;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    return-void
.end method

.method public reportKeyPressWithSym(Lcom/eltechs/axs/KeyCodesX;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPressWithSym(BI)V

    return-void
.end method

.method public reportKeyReleaseWithSym(Lcom/eltechs/axs/KeyCodesX;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyReleaseWithSym(BI)V

    return-void
.end method

.method public reportKeyWithSym(Lcom/eltechs/axs/KeyCodesX;I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyTypeWithSym(BI)V

    return-void
.end method

.method public varargs reportKeys([Lcom/eltechs/axs/KeyCodesX;)V
    .locals 6

    const/4 v0, 0x0

    .line 80
    array-length v1, p1

    new-array v1, v1, [B

    .line 82
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    .line 84
    sget-object v5, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 86
    invoke-virtual {v4}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectMultiKeyType([B)V

    return-void
.end method

.method public varargs reportKeysPress([Lcom/eltechs/axs/KeyCodesX;)V
    .locals 6

    const/4 v0, 0x0

    .line 30
    array-length v1, p1

    new-array v1, v1, [B

    .line 32
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    .line 34
    sget-object v5, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 36
    invoke-virtual {v4}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectMultiKeyPress([B)V

    return-void
.end method

.method public varargs reportKeysRelease([Lcom/eltechs/axs/KeyCodesX;)V
    .locals 6

    const/4 v0, 0x0

    .line 55
    array-length v1, p1

    new-array v1, v1, [B

    .line 57
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    .line 59
    sget-object v5, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 61
    invoke-virtual {v4}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/KeyEventReporter;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectMultiKeyRelease([B)V

    return-void
.end method
