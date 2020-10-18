.class public Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "Pack200CompressorInputStream.java"


# static fields
.field private static final CAFE_DOOD:[B

.field private static final SIG_LENGTH:I


# instance fields
.field private final originalInput:Ljava/io/InputStream;

.field private final streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 253
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    .line 256
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    array-length v0, v0

    sput v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0x2t
        -0x30t
        0xdt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    .line 173
    invoke-virtual {p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->newStreamBridge()Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 174
    new-instance p3, Ljava/util/jar/JarOutputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-direct {p3, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 175
    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/jar/Pack200$Unpacker;->properties()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-nez p2, :cond_1

    .line 180
    new-instance p2, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream$1;-><init>(Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;Ljava/io/InputStream;)V

    invoke-interface {v0, p2, p3}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V

    .line 191
    :goto_0
    invoke-virtual {p3}, Ljava/util/jar/JarOutputStream;->close()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    .line 270
    sget v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    .line 274
    :goto_0
    sget v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    if-ge p1, v0, :cond_2

    .line 275
    aget-byte v0, p0, p1

    sget-object v2, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    aget-byte v2, v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 247
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
