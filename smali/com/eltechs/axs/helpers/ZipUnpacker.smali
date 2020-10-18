.class public abstract Lcom/eltechs/axs/helpers/ZipUnpacker;
.super Ljava/lang/Object;
.source "ZipUnpacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractOneFile(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v0

    const-string v1, "extractOneFile() must be applied to file entries."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v0

    const-string v1, "extractOneFile() must be applied to file entries."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :try_start_2
    invoke-static {p0, v1}, Lcom/eltechs/axs/helpers/IOStreamHelpers;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 158
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 163
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnixMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x49

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_1

    .line 170
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    if-eqz v0, :cond_2

    .line 179
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 185
    :catch_4
    :cond_2
    throw p1
.end method

.method private static extractOneSymlink(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v0

    const-string v1, "extractOneSymlink() must be applied to symlinks."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v0

    const-string v1, "extractOneSymlink() must be applied to symlinks."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unpackZip(Ljava/io/File;Ljava/io/File;Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 41
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const-string v4, "\'%s\' must be a directory."

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 53
    :try_start_0
    new-instance v7, Lcom/eltechs/axs/helpers/ZipUnpacker$1;

    invoke-direct {v7, v2}, Lcom/eltechs/axs/helpers/ZipUnpacker$1;-><init>(Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;)V

    invoke-static {v7}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    goto/16 :goto_3

    .line 60
    :cond_0
    :goto_0
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-object/from16 v9, p0

    invoke-direct {v7, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v6

    const-wide/16 v9, 0x0

    move-wide v11, v9

    .line 63
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 65
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 67
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 69
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 72
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_5

    .line 74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted to create directory over file with same name \'%s\'."

    new-array v3, v5, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 74
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-nez v13, :cond_5

    .line 83
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create the directory \'%s\'."

    new-array v3, v5, [Ljava/lang/Object;

    .line 85
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 83
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_3
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 90
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v13, v14}, Lcom/eltechs/axs/helpers/ZipUnpacker;->extractOneSymlink(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/File;)V

    .line 91
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v13

    add-long/2addr v9, v13

    goto :goto_2

    .line 95
    :cond_4
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v13, v14}, Lcom/eltechs/axs/helpers/ZipUnpacker;->extractOneFile(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/File;)V

    .line 96
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v13

    add-long/2addr v9, v13

    :cond_5
    :goto_2
    const-wide/16 v13, 0x64

    mul-long/2addr v13, v9

    .line 99
    div-long/2addr v13, v3

    const-wide/16 v15, 0x5

    add-long/2addr v15, v11

    cmp-long v15, v13, v15

    if-ltz v15, :cond_1

    if-eqz v2, :cond_6

    .line 106
    new-instance v11, Lcom/eltechs/axs/helpers/ZipUnpacker$2;

    invoke-direct {v11, v2, v13, v14}, Lcom/eltechs/axs/helpers/ZipUnpacker$2;-><init>(Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;J)V

    invoke-static {v11}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    :cond_6
    move-wide v11, v13

    goto/16 :goto_1

    .line 116
    :cond_7
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    :goto_3
    if-eqz v7, :cond_8

    .line 124
    :try_start_2
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    :catch_2
    :cond_8
    throw v1
.end method
