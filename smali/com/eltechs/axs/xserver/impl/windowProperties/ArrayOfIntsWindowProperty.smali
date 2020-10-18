.class public final Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;
.super Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;
.source "ArrayOfIntsWindowProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty<",
        "[I>;"
    }
.end annotation


# instance fields
.field private data:[I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Atom;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [I

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/Atom;[I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;)V

    .line 19
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic appendValues(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->appendValues([I)V

    return-void
.end method

.method public appendValues([I)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    const/4 v1, 0x0

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 55
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    iget-object v3, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    array-length v2, v2

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    return-void
.end method

.method public getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "[I>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_INTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    return-object v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->getValues()[I

    move-result-object v0

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    return-object v0
.end method

.method public bridge synthetic prependValues(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->prependValues([I)V

    return-void
.end method

.method public prependValues([I)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    const/4 v1, 0x0

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 64
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    array-length v3, p1

    iget-object v4, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    array-length v4, v4

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    return-void
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->replaceValues([I)V

    return-void
.end method

.method public replaceValues([I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;->data:[I

    return-void
.end method
