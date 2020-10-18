.class public final Lcom/google/android/gms/internal/zzcke;
.super Lcom/google/android/gms/internal/zzcli;


# static fields
.field private static final zzjnk:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private zzjnb:Lcom/google/android/gms/internal/zzcki;

.field private zzjnc:Lcom/google/android/gms/internal/zzcki;

.field private final zzjnd:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/zzckh<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzjne:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzckh<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzjnf:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzjng:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzjnh:Ljava/lang/Object;

.field private final zzjni:Ljava/util/concurrent/Semaphore;

.field private volatile zzjnj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/internal/zzcke;->zzjnk:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnh:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjni:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnd:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjne:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Lcom/google/android/gms/internal/zzckg;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzckg;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnf:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Lcom/google/android/gms/internal/zzckg;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzckg;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjng:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcke;Lcom/google/android/gms/internal/zzcki;)Lcom/google/android/gms/internal/zzcki;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcke;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcke;->zzjni:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzckh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzckh<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzcki;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcke;->zzjnd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/zzcki;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnf:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcki;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcki;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcki;->zzsl()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzas()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcke;Lcom/google/android/gms/internal/zzcki;)Lcom/google/android/gms/internal/zzcki;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcke;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnj:Z

    return p0
.end method

.method static synthetic zzbbm()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcke;->zzjnk:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcke;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnh:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcke;)Lcom/google/android/gms/internal/zzcki;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcke;)Lcom/google/android/gms/internal/zzcki;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaxz()V

    return-void
.end method

.method public final zzaya()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzayb()Lcom/google/android/gms/internal/zzcia;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayb()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayc()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayc()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayd()Lcom/google/android/gms/internal/zzclk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayd()Lcom/google/android/gms/internal/zzclk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaye()Lcom/google/android/gms/internal/zzcje;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaye()Lcom/google/android/gms/internal/zzcje;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayf()Lcom/google/android/gms/internal/zzcir;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayf()Lcom/google/android/gms/internal/zzcir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayg()Lcom/google/android/gms/internal/zzcme;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayg()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayh()Lcom/google/android/gms/internal/zzcma;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayh()Lcom/google/android/gms/internal/zzcma;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayi()Lcom/google/android/gms/internal/zzcjf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayi()Lcom/google/android/gms/internal/zzcjf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayj()Lcom/google/android/gms/internal/zzcil;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayj()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayk()Lcom/google/android/gms/internal/zzcjh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayl()Lcom/google/android/gms/internal/zzcno;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaym()Lcom/google/android/gms/internal/zzckd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaym()Lcom/google/android/gms/internal/zzckd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayn()Lcom/google/android/gms/internal/zzcnd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayn()Lcom/google/android/gms/internal/zzcnd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayo()Lcom/google/android/gms/internal/zzcke;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayp()Lcom/google/android/gms/internal/zzcjj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayq()Lcom/google/android/gms/internal/zzcju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayr()Lcom/google/android/gms/internal/zzcik;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayr()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    return-object v0
.end method

.method protected final zzazq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbbk()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzbbl()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcke;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->executor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzckh;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzckh;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckh;->run()V

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzckh;)V

    return-object v0
.end method

.method public final zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzckh;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzckh;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckh;->run()V

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzckh;)V

    return-object v0
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzckh;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzckh;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzckh;)V

    return-void
.end method

.method public final zzi(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzckh;

    const-string v1, "Task exception on network thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzckh;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnh:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjne:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcki;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcke;->zzjne:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzcki;-><init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjng:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcki;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcki;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjnc:Lcom/google/android/gms/internal/zzcki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcki;->zzsl()V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzwj()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjnb:Lcom/google/android/gms/internal/zzcki;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzxx()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method
