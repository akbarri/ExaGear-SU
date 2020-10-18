.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 120
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    const/16 v0, 0x10

    .line 122
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    const/16 v0, 0x8

    .line 127
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/io/HexDump;->_shifts:[I

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 156
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    shr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 141
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    aget v2, v2, v0

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p4, :cond_8

    .line 76
    array-length v0, p0

    if-lt p4, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    .line 82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot write to nullstream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    :goto_0
    array-length v1, p0

    if-ge p4, v1, :cond_7

    const/16 v1, 0x10

    .line 88
    array-length v2, p0

    sub-int/2addr v2, p4

    if-le v2, v1, :cond_2

    move v2, v1

    .line 93
    :cond_2
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_4

    if-ge v5, v2, :cond_3

    add-int v6, v5, p4

    .line 96
    aget-byte v6, p0, v6

    invoke-static {v0, v6}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v6, "  "

    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_3
    if-ge v1, v2, :cond_6

    add-int v5, v1, p4

    .line 103
    aget-byte v6, p0, v5

    if-lt v6, v4, :cond_5

    aget-byte v6, p0, v5

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_5

    .line 104
    aget-byte v5, p0, v5

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const/16 v5, 0x2e

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 109
    :cond_6
    sget-object v1, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 111
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    int-to-long v1, v2

    add-long/2addr p1, v1

    add-int/lit8 p4, p4, 0x10

    goto :goto_0

    :cond_7
    return-void

    .line 77
    :cond_8
    :goto_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " into array of length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
