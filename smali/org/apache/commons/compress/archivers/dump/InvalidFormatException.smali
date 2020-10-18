.class public Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;
.super Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;
.source "InvalidFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected offset:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "there was an error decoding a tape segment"

    .line 31
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there was an error decoding a tape segment header at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;->offset:J

    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;->offset:J

    return-wide v0
.end method
