.class public final Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;
.super Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;
.source "ArrayOfBytesWindowProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty<",
        "[B>;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Atom;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/Atom;[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;)V

    .line 21
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic appendValues(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->appendValues([B)V

    return-void
.end method

.method public appendValues([B)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    const/4 v1, 0x0

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 57
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    iget-object v3, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    array-length v2, v2

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    return-void
.end method

.method public getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "[B>;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_BYTES:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    return-object v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->getValues()[B

    move-result-object v0

    return-object v0
.end method

.method public getValues()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    return-object v0
.end method

.method public bridge synthetic prependValues(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->prependValues([B)V

    return-void
.end method

.method public prependValues([B)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    const/4 v1, 0x0

    array-length v0, v0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 66
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    array-length v3, p1

    iget-object v4, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    array-length v4, v4

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    return-void
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->replaceValues([B)V

    return-void
.end method

.method public replaceValues([B)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "STRING"

    .line 74
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->getType()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Atom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;->data:[B

    const-string v2, "latin1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
