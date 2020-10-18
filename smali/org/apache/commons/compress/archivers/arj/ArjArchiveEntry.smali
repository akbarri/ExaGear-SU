.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
.super Ljava/lang/Object;
.source "ArjArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry$HostOs;
    }
.end annotation


# instance fields
.field private final localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    return-void
.end method


# virtual methods
.method public getHostOs()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 4

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->isHostOsUnix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v2, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v0

    .line 96
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method getMethod()I
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    const-string v1, "/"

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    return-wide v0
.end method

.method public getUnixMode()I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->isHostOsUnix()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->localFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHostOsUnix()Z
    .locals 2

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getHostOs()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getHostOs()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
