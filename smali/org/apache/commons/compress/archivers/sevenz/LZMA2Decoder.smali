.class Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "LZMA2Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/tukaani/xz/LZMA2Options;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Number;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method private getDictSize(Ljava/lang/Object;)I
    .locals 1

    .line 69
    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->numberOptionOrDefault(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    const/16 v0, 0xff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, -0x40

    if-eqz v0, :cond_0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported LZMA2 property bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v0, 0x28

    if-le p1, v0, :cond_1

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dictionary larger than 4GiB maximum size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    or-int/2addr v0, v1

    .line 86
    div-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xb

    shl-int p1, v0, p1

    return p1
.end method

.method private getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    return-object p1

    .line 93
    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->numberOptionOrDefault(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    return-object v0
.end method

.method private numberOptionOrDefault(Ljava/lang/Object;)I
    .locals 1

    const/high16 v0, 0x800000

    .line 99
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result p1

    .line 39
    new-instance p3, Lorg/tukaani/xz/LZMA2InputStream;

    invoke-direct {p3, p2, p1}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object p2

    .line 49
    new-instance v0, Lorg/tukaani/xz/FinishableWrapperOutputStream;

    invoke-direct {v0, p1}, Lorg/tukaani/xz/FinishableWrapperOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {p2, v0}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p1

    return-object p1
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictSize(Ljava/lang/Object;)I

    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x1e

    ushr-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [B

    rsub-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    int-to-byte p1, v0

    const/4 v0, 0x0

    aput-byte p1, v1, v0

    return-object v1
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
