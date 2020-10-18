.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "BinaryTree.java"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    add-int/2addr p1, v0

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 48
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 49
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 114
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_0
    new-array v0, v0, [B

    .line 118
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 123
    new-array p0, p1, [I

    const/4 v2, 0x0

    .line 125
    array-length v3, v0

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v3, :cond_2

    aget-byte v7, v0, v4

    and-int/lit16 v8, v7, 0xf0

    shr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v1

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v7, v1

    move v9, v5

    move v5, v2

    :goto_1
    if-ge v5, v8, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 131
    aput v7, p0, v9

    add-int/lit8 v5, v5, 0x1

    move v9, v10

    goto :goto_1

    .line 134
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_0

    .line 138
    :cond_2
    array-length v0, p0

    new-array v0, v0, [I

    move v3, v2

    .line 139
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 140
    aput v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_3
    array-length v3, p0

    new-array v3, v3, [I

    move v4, v2

    move v5, v4

    .line 145
    :goto_3
    array-length v7, p0

    if-ge v4, v7, :cond_6

    move v7, v5

    move v5, v2

    .line 147
    :goto_4
    array-length v8, p0

    if-ge v5, v8, :cond_5

    .line 149
    aget v8, p0, v5

    if-ne v8, v4, :cond_4

    .line 151
    aput v4, v3, v7

    .line 154
    aput v5, v0, v7

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_3

    .line 166
    :cond_6
    new-array v4, p1, [I

    sub-int/2addr p1, v1

    move v5, v2

    move v7, v5

    move v8, v7

    :goto_5
    if-ltz p1, :cond_8

    add-int/2addr v5, v7

    .line 170
    aget v9, v3, p1

    if-eq v9, v8, :cond_7

    .line 171
    aget v7, v3, p1

    rsub-int/lit8 v8, v7, 0x10

    shl-int v8, v1, v8

    move v11, v8

    move v8, v7

    move v7, v11

    .line 174
    :cond_7
    aget v9, v0, p1

    aput v5, v4, v9

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 178
    :cond_8
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    invoke-direct {p1, v6}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    move v0, v2

    .line 180
    :goto_6
    array-length v1, v4

    if-ge v0, v1, :cond_a

    .line 181
    aget v1, p0, v0

    if-lez v1, :cond_9

    .line 183
    aget v3, v4, v0

    shl-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->reverse(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v1, v0}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    return-object p1
.end method


# virtual methods
.method public addLeaf(IIII)V
    .locals 2

    if-nez p3, :cond_1

    .line 63
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget p2, p2, p1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 64
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aput p4, p2, p1

    goto :goto_0

    .line 66
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tree value at index "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " has already been assigned ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget p1, p4, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x2

    aput v1, v0, p1

    const/4 v0, 0x2

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, p2, 0x1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 74
    invoke-virtual {p0, v0, p1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    :goto_0
    return-void
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 94
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v4, v4, v3

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-eq v4, v2, :cond_2

    return v4

    .line 101
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of node at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not defined"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
