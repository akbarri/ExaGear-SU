.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;
.super Ljava/lang/Object;
.source "ZipArchiveEntryRequest.java"


# instance fields
.field private final method:I

.field private final payloadSupplier:Lorg/apache/commons/compress/parallel/InputStreamSupplier;

.field private final zipArchiveEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;


# direct methods
.method private constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->zipArchiveEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 43
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->payloadSupplier:Lorg/apache/commons/compress/parallel/InputStreamSupplier;

    .line 44
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->method:I

    return-void
.end method

.method public static createZipArchiveEntryRequest(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;
    .locals 1

    .line 54
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)V

    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->method:I

    return v0
.end method

.method public getPayloadStream()Ljava/io/InputStream;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->payloadSupplier:Lorg/apache/commons/compress/parallel/InputStreamSupplier;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/InputStreamSupplier;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method getZipArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->zipArchiveEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object v0
.end method
