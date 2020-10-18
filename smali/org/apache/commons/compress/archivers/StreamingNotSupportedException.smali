.class public Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;
.super Lorg/apache/commons/compress/archivers/ArchiveException;
.source "StreamingNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support streaming."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;->format:Ljava/lang/String;

    return-object v0
.end method
