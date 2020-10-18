.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "ArArchiveOutputStream.java"


# static fields
.field public static final LONGFILE_BSD:I = 0x1

.field public static final LONGFILE_ERROR:I


# instance fields
.field private entryOffset:J

.field private finished:Z

.field private haveUnclosedEntry:Z

.field private longFileMode:I

.field private final out:Ljava/io/OutputStream;

.field private prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 45
    iput v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    .line 48
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 51
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private fill(JJC)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-long p1, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 118
    invoke-virtual {p0, p5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p3
.end method

.method private write(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ascii"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write([B)V

    .line 128
    array-length p1, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private writeArchiveHeader()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "!<arch>\n"

    .line 67
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 69
    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private writeEntryHeader(Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    const/16 v2, 0x10

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 138
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename too long, > 16 chars: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-ne v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v5, v1

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v5, v1

    move v3, v4

    :goto_0
    move-wide v8, v5

    const-wide/16 v10, 0x10

    const/16 v12, 0x20

    move-object v7, p0

    .line 149
    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    move-result-wide v1

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_3

    .line 152
    new-instance p1, Ljava/io/IOException;

    const-string v0, "modified too long"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v5

    add-long v8, v1, v5

    const-wide/16 v10, 0x1c

    const/16 v12, 0x20

    move-object v7, p0

    .line 156
    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    move-result-wide v1

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_4

    .line 159
    new-instance p1, Ljava/io/IOException;

    const-string v0, "userid too long"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_4
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v5

    add-long v9, v1, v5

    const-wide/16 v11, 0x22

    const/16 v13, 0x20

    move-object v8, p0

    .line 163
    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    move-result-wide v1

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_5

    .line 166
    new-instance p1, Ljava/io/IOException;

    const-string v0, "groupid too long"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v5

    add-long v8, v1, v5

    const-wide/16 v10, 0x28

    const/16 v12, 0x20

    move-object v7, p0

    .line 170
    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    move-result-wide v1

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getMode()I

    move-result v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_6

    .line 173
    new-instance p1, Ljava/io/IOException;

    const-string v0, "filemode too long"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_6
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v5

    add-long v8, v1, v5

    const-wide/16 v10, 0x30

    const/16 v12, 0x20

    move-object v7, p0

    .line 177
    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    move-result-wide v1

    .line 178
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v5

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_7
    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_8

    .line 182
    new-instance p1, Ljava/io/IOException;

    const-string v0, "size too long"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v4

    add-long v7, v1, v4

    const-wide/16 v9, 0x3a

    const/16 v11, 0x20

    move-object v6, p0

    .line 186
    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    move-result-wide v1

    const-string p1, "`\n"

    .line 188
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    if-eqz v3, :cond_9

    .line 191
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_9
    return-wide v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finish()V

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    return-void
.end method

.method public closeArchiveEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    return-void

    .line 78
    :cond_3
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has already been finished"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    return-void
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->writeArchiveHeader()J

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 97
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length does not match entry ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->closeArchiveEntry()V

    .line 105
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->writeEntryHeader(Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;)J

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    return-void
.end method

.method public setLongFileMode(I)V
    .locals 0

    .line 63
    iput p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->count(I)V

    .line 201
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    return-void
.end method
