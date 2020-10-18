.class Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V
    .locals 0

    .line 1122
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    .line 1123
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1138
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1140
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 1141
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .locals 1

    .line 1127
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1132
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
