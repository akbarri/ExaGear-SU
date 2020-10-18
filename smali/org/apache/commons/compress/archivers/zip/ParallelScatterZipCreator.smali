.class public Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;
.super Ljava/lang/Object;
.source "ParallelScatterZipCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;
    }
.end annotation


# instance fields
.field private final backingStoreSupplier:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

.field private compressionDoneAt:J

.field private final es:Ljava/util/concurrent/ExecutorService;

.field private final futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private scatterDoneAt:J

.field private final startedAt:J

.field private final streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final tlScatterStreams:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 109
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$DefaultBackingStoreSupplier;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->startedAt:J

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionDoneAt:J

    .line 81
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->tlScatterStreams:Ljava/lang/ThreadLocal;

    .line 121
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->backingStoreSupplier:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

    .line 122
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->es:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->backingStoreSupplier:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createDeferred(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Ljava/lang/ThreadLocal;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->tlScatterStreams:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method private createDeferred(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStoreSupplier;->get()Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    move-result-object p1

    const/4 v0, -0x1

    .line 77
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object v0

    .line 78
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;-><init>(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;Lorg/apache/commons/compress/archivers/zip/StreamCompressor;)V

    return-object v1
.end method


# virtual methods
.method public addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->submit(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/parallel/InputStreamSupplier;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method must be set on zipArchiveEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 173
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->createZipArchiveEntryRequest(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    move-result-object p1

    .line 174
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;-><init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V

    return-object p2
.end method

.method public getStatisticsMessage()Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;
    .locals 7

    .line 224
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionDoneAt:J

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->startedAt:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->scatterDoneAt:J

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionDoneAt:J

    sub-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;-><init>(JJ)V

    return-object v0
.end method

.method public final submit(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->es:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeTo(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 201
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->es:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 205
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->es:Ljava/util/concurrent/ExecutorService;

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->compressionDoneAt:J

    .line 210
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 211
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->writeTo(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V

    .line 212
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->close()V

    goto :goto_1

    .line 215
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->scatterDoneAt:J

    return-void
.end method
