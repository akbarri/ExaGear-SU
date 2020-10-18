.class public Lorg/apache/commons/compress/archivers/sevenz/CLI;
.super Ljava/lang/Object;
.source "CLI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    }
.end annotation


# static fields
.field private static final BUF:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    .line 26
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI;->BUF:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI;->BUF:[B

    return-object v0
.end method

.method private static grabMode([Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .locals 2

    const/4 v0, 0x2

    .line 146
    array-length v1, p0

    if-ge v1, v0, :cond_0

    .line 147
    sget-object p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object p0

    .line 149
    :cond_0
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    array-length v0, p0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->usage()V

    return-void

    .line 124
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->grabMode([Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    move-result-object v0

    .line 125
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/io/File;

    aget-object p0, p0, v3

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_1

    .line 128
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist or is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    :cond_1
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;)V

    .line 133
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v0, p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    throw v0
.end method

.method private static usage()V
    .locals 2

    .line 142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Parameters: archive-name [list|extract]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
