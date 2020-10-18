.class public Lorg/apache/commons/compress/archivers/ArchiveException;
.super Ljava/lang/Exception;
.source "ArchiveException.java"


# static fields
.field private static final serialVersionUID:J = 0x267a938239b6b01cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/ArchiveException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
