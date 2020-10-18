.class Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    }
.end annotation


# instance fields
.field private final highChars:[C

.field private final reverseMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([C)V
    .locals 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    const/16 v1, 0x7f

    const/4 v2, 0x0

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v4, v0, v2

    .line 113
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;-><init>(BC)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    return-void
.end method

.method private encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    .locals 5

    .line 184
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_2

    sub-int v2, v0, v1

    .line 188
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 190
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 192
    iget-char v4, v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v4, p1, :cond_0

    return-object v3

    .line 196
    :cond_0
    iget-char v3, v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ge v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_3

    return-object v2

    .line 207
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 209
    iget-char v1, v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-eq v1, p1, :cond_4

    return-object v2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 223
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 227
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->canEncodeChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public canEncodeChar(C)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    return v0

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    array-length v1, p1

    new-array v1, v1, [C

    .line 271
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 272
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->decodeByte(B)C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public decodeByte(B)C
    .locals 2

    if-ltz p1, :cond_0

    int-to-char p1, p1

    return p1

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    const/16 v1, 0x80

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 244
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 246
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    :cond_0
    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->pushEncodedChar(Ljava/nio/ByteBuffer;C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 259
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public pushEncodedChar(Ljava/nio/ByteBuffer;C)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    int-to-byte p2, p2

    .line 162
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v0

    .line 166
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_1
    iget-byte p2, p2, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v0
.end method
