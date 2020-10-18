.class public Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
.super Ljava/lang/Object;
.source "CompressorStreamFactory.java"


# static fields
.field public static final BZIP2:Ljava/lang/String; = "bzip2"

.field public static final DEFLATE:Ljava/lang/String; = "deflate"

.field public static final GZIP:Ljava/lang/String; = "gz"

.field public static final LZMA:Ljava/lang/String; = "lzma"

.field public static final PACK200:Ljava/lang/String; = "pack200"

.field public static final SNAPPY_FRAMED:Ljava/lang/String; = "snappy-framed"

.field public static final SNAPPY_RAW:Ljava/lang/String; = "snappy-raw"

.field public static final XZ:Ljava/lang/String; = "xz"

.field public static final Z:Ljava/lang/String; = "z"


# instance fields
.field private volatile decompressConcatenated:Z

.field private final decompressUntilEOF:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    .line 166
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    return-void
.end method


# virtual methods
.method public createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 207
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mark is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0xc

    .line 214
    new-array v0, v0, [B

    .line 215
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 217
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 218
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 220
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 224
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 228
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 232
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 236
    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    new-instance v0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 240
    :cond_6
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 244
    :cond_7
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->isXZCompressionAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 246
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 249
    :cond_8
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->matches([BI)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->isLZMACompressionAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :cond_9
    new-instance p1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v0, "No Compressor found for the stream signature."

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 255
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v1, "Failed to detect Compressor from InputStream."

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v0, "gz"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance p1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object p1

    :cond_1
    const-string v0, "bzip2"

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    new-instance p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object p1

    :cond_2
    const-string v0, "xz"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    new-instance p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object p1

    :cond_3
    const-string v0, "lzma"

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    new-instance p1, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_4
    const-string v0, "pack200"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    new-instance p1, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_5
    const-string v0, "snappy-raw"

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    new-instance p1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_6
    const-string v0, "snappy-framed"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    new-instance p1, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_7
    const-string v0, "z"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    new-instance p1, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_8
    const-string v0, "deflate"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    new-instance p1, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 322
    :cond_9
    new-instance p2, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compressor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 319
    new-instance p2, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v0, "Could not create CompressorInputStream."

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 276
    :cond_a
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Compressor name and stream must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "gz"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    new-instance p1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_1
    const-string v0, "bzip2"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    new-instance p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_2
    const-string v0, "xz"

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    new-instance p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_3
    const-string v0, "pack200"

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    new-instance p1, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_4
    const-string v0, "deflate"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    new-instance p1, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 370
    :cond_5
    new-instance p2, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compressor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 367
    new-instance p2, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v0, "Could not create CompressorOutputStream"

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 340
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Compressor name and stream must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getDecompressConcatenated()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    return v0
.end method

.method public setDecompressConcatenated(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 188
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot override the setting defined by the constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    return-void
.end method
