.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
.super Ljava/lang/Object;
.source "ArArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field private static final DEFAULT_MODE:I = 0x81a4

.field public static final HEADER:Ljava/lang/String; = "!<arch>\n"

.field public static final TRAILER:Ljava/lang/String; = "`\n"


# instance fields
.field private final groupId:I

.field private final lastModified:J

.field private final length:J

.field private final mode:I

.field private final name:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x81a4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 13

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v11, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x81a4

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIJ)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    .line 102
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->length:J

    .line 103
    iput p4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->userId:I

    .line 104
    iput p5, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->groupId:I

    .line 105
    iput p6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->mode:I

    .line 106
    iput-wide p7, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->lastModified:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 181
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 182
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-eqz p1, :cond_3

    return v1

    .line 185
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getGroupId()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->groupId:I

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->lastModified:J

    return-wide v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 5

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->length:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDirectory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
