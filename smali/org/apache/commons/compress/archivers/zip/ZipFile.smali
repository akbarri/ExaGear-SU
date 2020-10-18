.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private volatile closed:Z

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 523
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF8"

    .line 154
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    const/16 v1, 0x8

    .line 141
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    const/4 v1, 0x4

    .line 142
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    const/16 v1, 0x2a

    .line 143
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    const/4 v1, 0x2

    .line 144
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    .line 1093
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 212
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 213
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 214
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string p3, "r"

    invoke-direct {p2, p1, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 217
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object p1

    .line 219
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 224
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {p2}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF8"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 258
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 544
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 545
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    .line 547
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    new-instance v0, Ljava/io/IOException;

    const-string v1, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    :goto_0
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 553
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 554
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 555
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 803
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 806
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 807
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 808
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 814
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 816
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory32()V

    goto :goto_1

    .line 818
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory64()V

    :goto_1
    return-void
.end method

.method private positionAtCentralDirectory32()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 857
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 858
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 859
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 833
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 835
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 836
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 837
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 838
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x2c

    .line 842
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 844
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 845
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 574
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    .line 575
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-direct {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V

    .line 577
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 579
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setVersionMadeBy(I)V

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    .line 580
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setPlatform(I)V

    .line 582
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setVersionRequired(I)V

    .line 585
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v3

    .line 586
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 587
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 589
    :goto_0
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 590
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v3, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setRawFlag(I)V

    const/4 v3, 0x6

    .line 595
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setMethod(I)V

    .line 598
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v3

    .line 599
    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setTime(J)V

    const/16 v3, 0xc

    .line 602
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCrc(J)V

    const/16 v3, 0x10

    .line 605
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCompressedSize(J)V

    const/16 v3, 0x14

    .line 608
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setSize(J)V

    const/16 v3, 0x18

    .line 611
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    const/16 v4, 0x1a

    .line 614
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v4

    const/16 v5, 0x1c

    .line 617
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v8, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v5

    const/16 v8, 0x1e

    .line 620
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    const/16 v9, 0x20

    .line 623
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v10, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setInternalAttributes(I)V

    const/16 v9, 0x22

    .line 626
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v10, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExternalAttributes(J)V

    const/16 v9, 0x26

    .line 629
    new-array v3, v3, [B

    .line 630
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 631
    invoke-interface {v7, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setName(Ljava/lang/String;[B)V

    .line 634
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v10, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 636
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-array v4, v4, [B

    .line 639
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 640
    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCentralDirectoryExtra([B)V

    .line 642
    invoke-direct {p0, v2, v0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V

    .line 644
    new-array v0, v5, [B

    .line 645
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 646
    invoke-interface {v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setComment(Ljava/lang/String;)V

    if-nez v6, :cond_1

    .line 648
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    if-eqz v4, :cond_1

    .line 649
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    invoke-direct {v4, v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 958
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 959
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v2

    .line 960
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v3

    .line 961
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v6, 0x1a

    add-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 962
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 963
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 964
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 965
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v6

    move v7, v5

    :goto_1
    if-lez v7, :cond_1

    .line 968
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    if-gtz v8, :cond_0

    .line 970
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to skip file name in local file header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sub-int/2addr v7, v8

    goto :goto_1

    .line 975
    :cond_1
    new-array v7, v6, [B

    .line 976
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 977
    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExtra([B)V

    const-wide/16 v7, 0x2

    add-long/2addr v3, v7

    add-long/2addr v3, v7

    int-to-long v7, v5

    add-long/2addr v3, v7

    int-to-long v5, v6

    add-long/2addr v3, v5

    .line 978
    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 981
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 983
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v3

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v2

    invoke-static {v1, v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 987
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 988
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_3

    .line 990
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 991
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    if-eqz v0, :cond_8

    .line 673
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    .line 674
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    .line 675
    :goto_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const v4, 0xffff

    if-ne p3, v4, :cond_3

    move v2, v5

    .line 677
    :cond_3
    invoke-virtual {v0, v1, v6, v3, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    if-eqz v1, :cond_4

    .line 683
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 685
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {p3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 689
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    .line 691
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v1

    invoke-direct {p3, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 695
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    :cond_8
    return-void
.end method

.method private skipBytes(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 922
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 924
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1003
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 1004
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 885
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    cmp-long p3, v0, p3

    const/4 p4, 0x1

    const/4 v2, 0x0

    if-ltz p3, :cond_2

    :goto_0
    cmp-long p3, v0, p1

    if-ltz p3, :cond_2

    .line 889
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 890
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    goto :goto_1

    .line 894
    :cond_0
    aget-byte v3, p5, v2

    if-ne p3, v3, :cond_1

    .line 895
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    .line 896
    aget-byte v3, p5, p4

    if-ne p3, v3, :cond_1

    .line 897
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v3, 0x2

    .line 898
    aget-byte v3, p5, v3

    if-ne p3, v3, :cond_1

    .line 899
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v3, 0x3

    .line 900
    aget-byte v3, p5, v3

    if-ne p3, v3, :cond_1

    move v2, p4

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 910
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    return v2
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 0

    .line 349
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public copyRawEntries(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object v0

    .line 384
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 386
    invoke-interface {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;->test(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 491
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up unclosed ZipFile for archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 332
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 334
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 336
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 285
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 402
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 406
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v0

    .line 407
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 408
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v3

    .line 409
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 411
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found unsupported compression method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :pswitch_0
    new-instance p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 420
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 421
    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 422
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    invoke-direct {v1, p0, v0, p1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    return-object v1

    .line 417
    :pswitch_2
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result p1

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V

    return-object v1

    .line 415
    :pswitch_3
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :pswitch_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 7

    .line 363
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 366
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v3

    .line 368
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    return-object v0
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 468
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 472
    :try_start_1
    invoke-static {p1}, Lorg/apache/commons/compress/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 473
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    :cond_2
    return-object v0
.end method
