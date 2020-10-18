.class public Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;
.super Ljava/util/zip/ZipException;
.source "Zip64RequiredException.java"


# static fields
.field static final ARCHIVE_TOO_BIG_MESSAGE:Ljava/lang/String; = "archive\'s size exceeds the limit of 4GByte."

.field static final TOO_MANY_ENTRIES_MESSAGE:Ljava/lang/String; = "archive contains more than 65535 entries."

.field private static final serialVersionUID:J = 0x132ddd9L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s size exceeds the limit of 4GByte."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
