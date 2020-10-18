.class final Lcom/google/tagmanager/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# static fields
.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static incompleteStateFor(I)I
    .locals 1

    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private static incompleteStateFor(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static incompleteStateFor(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static incompleteStateFor([BII)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    .line 312
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    packed-switch p2, :pswitch_data_0

    .line 317
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 316
    :pswitch_0
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    .line 315
    :pswitch_1
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    .line 314
    :pswitch_2
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidUtf8([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 80
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/tagmanager/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([BII)Z
    .locals 0

    .line 93
    invoke-static {p0, p1, p2}, Lcom/google/tagmanager/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .locals 6

    if-eqz p0, :cond_e

    if-lt p2, p3, :cond_0

    return p0

    :cond_0
    int-to-byte v0, p0

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_2

    const/16 p0, -0x3e

    if-lt v0, p0, :cond_1

    add-int/lit8 p0, p2, 0x1

    .line 134
    aget-byte p2, p1, p2

    if-le p2, v3, :cond_f

    :cond_1
    return v2

    :cond_2
    const/16 v4, -0x10

    if-ge v0, v4, :cond_8

    shr-int/lit8 p0, p0, 0x8

    not-int p0, p0

    int-to-byte p0, p0

    if-nez p0, :cond_4

    add-int/lit8 p0, p2, 0x1

    .line 145
    aget-byte p2, p1, p2

    if-lt p0, p3, :cond_3

    .line 147
    invoke-static {v0, p2}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_3
    move v5, p2

    move p2, p0

    move p0, v5

    :cond_4
    if-gt p0, v3, :cond_7

    const/16 v4, -0x60

    if-ne v0, v1, :cond_5

    if-lt p0, v4, :cond_7

    :cond_5
    const/16 v1, -0x13

    if-ne v0, v1, :cond_6

    if-ge p0, v4, :cond_7

    :cond_6
    add-int/lit8 p0, p2, 0x1

    .line 150
    aget-byte p2, p1, p2

    if-le p2, v3, :cond_f

    :cond_7
    return v2

    :cond_8
    shr-int/lit8 v1, p0, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_9

    add-int/lit8 p0, p2, 0x1

    .line 166
    aget-byte v1, p1, p2

    if-lt p0, p3, :cond_a

    .line 168
    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_9
    shr-int/lit8 p0, p0, 0x10

    int-to-byte v4, p0

    move p0, p2

    :cond_a
    if-nez v4, :cond_c

    add-int/lit8 p2, p0, 0x1

    .line 174
    aget-byte v4, p1, p0

    if-lt p2, p3, :cond_b

    .line 176
    invoke-static {v0, v1, v4}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    :cond_b
    move p0, p2

    :cond_c
    if-gt v1, v3, :cond_d

    shl-int/lit8 p2, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_d

    if-gt v4, v3, :cond_d

    add-int/lit8 p2, p0, 0x1

    .line 184
    aget-byte p0, p1, p0

    if-le p0, v3, :cond_e

    :cond_d
    return v2

    :cond_e
    move p0, p2

    .line 199
    :cond_f
    invoke-static {p1, p0, p3}, Lcom/google/tagmanager/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8([BII)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 223
    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 227
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/tagmanager/protobuf/Utf8;->partialIsValidUtf8NonAscii([BII)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 6

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 241
    aget-byte p1, p0, p1

    if-gez p1, :cond_c

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_4

    if-lt v0, p2, :cond_2

    return p1

    :cond_2
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_3

    add-int/lit8 p1, v0, 0x1

    .line 252
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_3
    return v2

    :cond_4
    const/16 v4, -0x10

    if-ge p1, v4, :cond_9

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_5

    .line 260
    invoke-static {p0, v0, p2}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0

    :cond_5
    add-int/lit8 v4, v0, 0x1

    .line 262
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_8

    const/16 v5, -0x60

    if-ne p1, v1, :cond_6

    if-lt v0, v5, :cond_8

    :cond_6
    const/16 v1, -0x13

    if-ne p1, v1, :cond_7

    if-ge v0, v5, :cond_8

    :cond_7
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_0

    :cond_8
    return v2

    :cond_9
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_a

    .line 275
    invoke-static {p0, v0, p2}, Lcom/google/tagmanager/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0

    :cond_a
    add-int/lit8 v1, v0, 0x1

    .line 277
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_b

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_b

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v3, :cond_b

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v3, :cond_c

    :cond_b
    return v2

    :cond_c
    move p1, v0

    goto :goto_0
.end method
