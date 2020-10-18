.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;
.super Ljava/io/IOException;
.source "DumpArchiveException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
