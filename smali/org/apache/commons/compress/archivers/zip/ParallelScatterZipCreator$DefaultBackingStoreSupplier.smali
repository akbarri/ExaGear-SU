.class Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;
.super Ljava/lang/Object;
.source "ParallelScatterZipCreator.java"

# interfaces
.implements Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultBackingStoreSupplier"
.end annotation


# instance fields
.field final storeNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;->storeNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "parallelscatter"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;->storeNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    new-instance v1, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;-><init>(Ljava/io/File;)V

    return-object v1
.end method
