.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;
.super Ljava/io/FilterInputStream;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyByteAddingInputStream"
.end annotation


# instance fields
.field private addDummyByte:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coders$1;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 253
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    if-eqz v2, :cond_0

    .line 254
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    move v0, v1

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 263
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 264
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    .line 265
    aput-byte p3, p1, p2

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method
