.class public Lorg/apache/commons/compress/archivers/dump/UnrecognizedFormatException;
.super Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;
.source "UnrecognizedFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "this is not a recognized format."

    .line 30
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    return-void
.end method
