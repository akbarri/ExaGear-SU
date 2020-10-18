.class public final Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;
.super Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;
.source "ArrayOfShortsWindowProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty<",
        "[S>;"
    }
.end annotation


# instance fields
.field private data:[S


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Atom;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [S

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;[S)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/Atom;[S)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;)V

    .line 19
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    return-void
.end method


# virtual methods
.method public bridge synthetic appendValues(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->appendValues([S)V

    return-void
.end method

.method public appendValues([S)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    const/4 v1, 0x0

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [S

    .line 55
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    iget-object v3, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    array-length v2, v2

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    return-void
.end method

.method public getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "[S>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_SHORTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    return-object v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->getValues()[S

    move-result-object v0

    return-object v0
.end method

.method public getValues()[S
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    return-object v0
.end method

.method public bridge synthetic prependValues(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->prependValues([S)V

    return-void
.end method

.method public prependValues([S)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    const/4 v1, 0x0

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [S

    .line 64
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    array-length v3, p1

    iget-object v4, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    array-length v4, v4

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    return-void
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->replaceValues([S)V

    return-void
.end method

.method public replaceValues([S)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;->data:[S

    return-void
.end method
