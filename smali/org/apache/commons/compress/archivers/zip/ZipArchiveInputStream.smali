.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ZipArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
    }
.end annotation


# static fields
.field private static final CFH:[B

.field private static final CFH_LEN:I = 0x2e

.field private static final DD:[B

.field private static final LFH:[B

.field private static final LFH_LEN:I = 0x1e

.field private static final TWO_EXP_32:J = 0x100000000L


# instance fields
.field private final LFH_BUF:[B

.field private final SHORT_BUF:[B

.field private final SKIP_BUF:[B

.field private final TWO_DWORD_BUF:[B

.field private final WORD_BUF:[B

.field private allowStoredEntriesWithDataDescriptor:Z

.field private final buf:Ljava/nio/ByteBuffer;

.field private closed:Z

.field private current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

.field final encoding:Ljava/lang/String;

.field private entriesRead:I

.field private hitCentralDirectory:Z

.field private final in:Ljava/io/InputStream;

.field private final inf:Ljava/util/zip/Inflater;

.field private lastStoredEntry:Ljava/io/ByteArrayInputStream;

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 806
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    .line 807
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    .line 808
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "UTF8"

    .line 168
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 2

    .line 208
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 92
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    const/16 v0, 0x200

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 104
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 111
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    .line 114
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    const/16 v0, 0x1e

    .line 155
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    const/16 v0, 0x400

    .line 156
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SHORT_BUF:[B

    const/4 v0, 0x4

    .line 158
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    const/16 v0, 0x10

    .line 159
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    .line 161
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    .line 209
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->encoding:Ljava/lang/String;

    .line 210
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 211
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    .line 212
    new-instance p2, Ljava/io/PushbackInputStream;

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    invoke-direct {p2, p1, p3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    .line 213
    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    .line 216
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    return-object p0
.end method

.method private bufferContainsSignature(Ljava/io/ByteArrayOutputStream;III)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-nez v1, :cond_6

    add-int/lit8 v4, p3, -0x4

    if-ge v2, v4, :cond_6

    .line 824
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    aget-byte v4, v4, v2

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    aget-byte v5, v5, v0

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_5

    .line 825
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    const/4 v9, 0x3

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v7, v2, 0x3

    aget-byte v4, v4, v7

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    aget-byte v7, v7, v9

    if-eq v4, v7, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    aget-byte v4, v4, v2

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    aget-byte v7, v7, v8

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v7, v2, 0x3

    aget-byte v4, v4, v7

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    aget-byte v7, v7, v9

    if-ne v4, v7, :cond_2

    :cond_1
    add-int v1, p2, p3

    sub-int/2addr v1, v2

    sub-int v3, v1, p4

    goto :goto_1

    .line 831
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    aget-byte v4, v4, v5

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    aget-byte v5, v5, v8

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/lit8 v5, v2, 0x3

    aget-byte v4, v4, v5

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    aget-byte v5, v5, v9

    if-ne v4, v5, :cond_3

    add-int v1, p2, p3

    sub-int v3, v1, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    if-eqz v6, :cond_4

    .line 841
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int v4, p2, p3

    sub-int/2addr v4, v3

    invoke-direct {p0, v1, v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 842
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 843
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    :cond_4
    move v1, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return v1
.end method

.method private cacheBytesRead(Ljava/io/ByteArrayOutputStream;III)I
    .locals 1

    add-int/2addr p2, p3

    sub-int p3, p2, p4

    add-int/lit8 p3, p3, -0x3

    if-lez p3, :cond_0

    .line 862
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 863
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/lit8 p4, p4, 0x3

    invoke-static {p1, p3, p2, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, p4

    :cond_0
    return p2
.end method

.method private static checksig([B[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 584
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 585
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private closeEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 612
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-nez v0, :cond_1

    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->drainCurrentEntryData()V

    goto :goto_1

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    .line 623
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skip(J)J

    .line 625
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getBytesInflated()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v0

    .line 630
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    if-lez v0, :cond_4

    .line 634
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 638
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 639
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    .line 642
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 643
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 645
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method private drainCurrentEntryData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 655
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    .line 657
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated ZIP entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(J)V

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fill()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 692
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    .line 696
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 697
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 698
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_1
    return v0
.end method

.method private findEocdRecord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-nez v2, :cond_0

    .line 916
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v2

    if-le v2, v1, :cond_7

    move v3, v2

    .line 918
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    .line 921
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    .line 922
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-eq v3, v2, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_1

    .line 926
    :cond_2
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    goto :goto_0

    .line 929
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    .line 930
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    if-eq v3, v2, :cond_5

    if-ne v3, v1, :cond_4

    goto :goto_1

    .line 934
    :cond_4
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    goto :goto_0

    .line 937
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    if-eq v3, v1, :cond_7

    .line 938
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v4, 0x3

    aget-byte v2, v2, v4

    if-ne v3, v2, :cond_6

    goto :goto_1

    .line 942
    :cond_6
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private getBytesInflated()J
    .locals 8

    .line 681
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    .line 682
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :goto_0
    add-long v2, v0, v4

    .line 683
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private isFirstByteOfEocdSig(I)Z
    .locals 2

    .line 985
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static matches([BI)Z
    .locals 2

    .line 573
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    const/4 v1, 0x0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return v1

    .line 577
    :cond_0
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private processZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipLong;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 3

    .line 354
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 357
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$402(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)Z

    .line 358
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 359
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 362
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 365
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private pushback([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    int-to-long p1, p3

    .line 873
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushedBackBytes(J)V

    return-void
.end method

.method private readDataDescriptor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 713
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 714
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 717
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 719
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 732
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 733
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 734
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 740
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_1

    .line 735
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-direct {p0, v0, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 736
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 737
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    :goto_1
    return-void
.end method

.method private readDeflated([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFromInflater([BII)I

    move-result p1

    if-gtz p1, :cond_2

    .line 480
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    return p3

    .line 482
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 483
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "This archive needs a preset dictionary which is not supported by Commons Compress."

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne p1, p3, :cond_2

    .line 487
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Truncated ZIP file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return p1
.end method

.method private readFirstLocalFileHeader([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 333
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 334
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->SPLITTING:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;)V

    throw p1

    .line 338
    :cond_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 341
    new-array v1, v0, [B

    .line 342
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    const/16 v2, 0x1a

    const/4 v3, 0x0

    .line 343
    invoke-static {p1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    invoke-static {v1, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private readFromInflater([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 500
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->fill()I

    move-result v1

    if-lez v1, :cond_1

    .line 503
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$714(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    return p1

    .line 511
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 515
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 513
    new-instance p2, Ljava/util/zip/ZipException;

    invoke-virtual {p1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method private readFully([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 705
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 706
    array-length p1, p1

    if-ge v0, p1, :cond_0

    .line 707
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method private readOneByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 979
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    :cond_0
    return v0
.end method

.method private readStored([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    .line 442
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStoredEntry()V

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    .line 448
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    const/4 v3, -0x1

    if-ltz v2, :cond_2

    return v3

    .line 452
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 453
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 454
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v3, :cond_3

    return v3

    .line 458
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 460
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 461
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$714(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    .line 464
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 465
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long v2, v0, v2

    int-to-long v4, p3

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 467
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 469
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 470
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$614(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    return p3
.end method

.method private readStoredEntry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 781
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 784
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    rsub-int v6, v3, 0x200

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_2

    .line 788
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Truncated ZIP file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int v5, v4, v3

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    move v3, v5

    goto :goto_1

    .line 796
    :cond_3
    invoke-direct {p0, v0, v3, v4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bufferContainsSignature(Ljava/io/ByteArrayOutputStream;III)Z

    move-result v2

    if-nez v2, :cond_1

    .line 798
    invoke-direct {p0, v0, v3, v4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->cacheBytesRead(Ljava/io/ByteArrayOutputStream;III)I

    move-result v3

    goto :goto_1

    .line 802
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 803
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method private realSkip(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    sub-long v2, p1, v0

    .line 958
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v7, v7

    int-to-long v7, v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v2, v2

    int-to-long v2, v2

    :goto_1
    long-to-int v2, v2

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-void

    .line 962
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return-void

    .line 967
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private skipRemainderOfArchive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    mul-int/lit8 v0, v0, 0x2e

    add-int/lit8 v0, v0, -0x1e

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 902
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->findEocdRecord()V

    const-wide/16 v0, 0x10

    .line 903
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 904
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SHORT_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 906
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SHORT_BUF:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    return-void
.end method

.method private supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1

    .line 752
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 2

    .line 384
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 385
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 386
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closeEntry()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFirstLocalFileHeader([B)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 244
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipLong;->AED_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    :cond_3
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skipRemainderOfArchive()V

    .line 248
    :cond_4
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    const/4 v0, 0x4

    .line 253
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-direct {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$1;)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 255
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    const/4 v3, 0x6

    .line 257
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    const/16 v5, 0x8

    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 259
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 261
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 262
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v7

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)Z

    .line 263
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 267
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v6, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    const/16 v0, 0xa

    .line 270
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v5, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v5

    .line 271
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    const/16 v0, 0xe

    .line 275
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 276
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v6, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    const/16 v0, 0x12

    .line 279
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-direct {v5, v6, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    const/16 v0, 0x16

    .line 282
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-direct {v6, v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    goto :goto_3

    :cond_7
    move-object v5, v1

    move-object v6, v5

    :goto_3
    const/16 v0, 0x1a

    .line 288
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    const/16 v7, 0x1c

    .line 292
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    invoke-static {v8, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v7

    .line 295
    new-array v0, v0, [B

    .line 296
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 297
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v8

    invoke-interface {v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;[B)V

    .line 299
    new-array v4, v7, [B

    .line 300
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 301
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    if-nez v3, :cond_8

    .line 303
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    if-eqz v3, :cond_8

    .line 304
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 307
    :cond_8
    invoke-direct {p0, v6, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->processZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipLong;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    .line 309
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_b

    .line 310
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 311
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    invoke-direct {v3, p0, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V

    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$302(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_4

    .line 312
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 313
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result v4

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-direct {v5, p0, v6, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$302(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_4

    .line 317
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 318
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    invoke-direct {v3, p0, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V

    invoke-direct {v1, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$302(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 322
    :cond_b
    :goto_4
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    .line 323
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    return-object v0

    :catch_0
    return-object v1

    :cond_c
    :goto_5
    return-object v1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 396
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 404
    :cond_1
    array-length v0, p1

    if-gt p2, v0, :cond_9

    if-ltz p3, :cond_9

    if-ltz p2, :cond_9

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_2

    goto/16 :goto_2

    .line 408
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 409
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object p2, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->DATA_DESCRIPTOR:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw p1

    .line 415
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    .line 416
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStored([BII)I

    move-result p3

    goto :goto_1

    .line 417
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 418
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDeflated([BII)I

    move-result p3

    goto :goto_1

    .line 419
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 424
    :cond_6
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw p1

    .line 422
    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    :goto_1
    if-ltz p3, :cond_8

    .line 429
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_8
    return p3

    .line 405
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    sub-long v2, p1, v0

    .line 552
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v6, v6

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v2, v2

    int-to-long v2, v2

    :goto_1
    long-to-int v2, v2

    invoke-virtual {p0, v4, v5, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-wide v0

    :cond_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    return-wide v0

    .line 560
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
