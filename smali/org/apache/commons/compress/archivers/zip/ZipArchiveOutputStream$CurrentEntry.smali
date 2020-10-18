.class final Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;
.super Ljava/lang/Object;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentEntry"
.end annotation


# instance fields
.field private bytesRead:J

.field private causedUseOfZip64:Z

.field private dataStart:J

.field private final entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private hasWritten:Z

.field private localDataStart:J


# direct methods
.method private constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2

    .line 1585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1596
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->localDataStart:J

    .line 1600
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->dataStart:J

    .line 1605
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->bytesRead:J

    const/4 v0, 0x0

    .line 1609
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->causedUseOfZip64:Z

    .line 1586
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$1;)V
    .locals 0

    .line 1584
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J
    .locals 2

    .line 1584
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->dataStart:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J
    .locals 0

    .line 1584
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->dataStart:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J
    .locals 2

    .line 1584
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->bytesRead:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J
    .locals 0

    .line 1584
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->bytesRead:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 0

    .line 1584
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z
    .locals 0

    .line 1584
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->hasWritten:Z

    return p0
.end method

.method static synthetic access$302(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)Z
    .locals 0

    .line 1584
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->hasWritten:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J
    .locals 2

    .line 1584
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->localDataStart:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J
    .locals 0

    .line 1584
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->localDataStart:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z
    .locals 0

    .line 1584
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return p0
.end method

.method static synthetic access$502(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)Z
    .locals 0

    .line 1584
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return p1
.end method
