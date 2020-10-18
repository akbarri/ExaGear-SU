.class public final Lcom/google/android/gms/internal/zzv;
.super Ljava/lang/Object;


# instance fields
.field private final zzaa:Lcom/google/android/gms/internal/zzm;

.field private final zzba:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzbb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzbc:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzbd:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzbe:[Lcom/google/android/gms/internal/zzn;

.field private final zzbf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/zzb;

.field private final zzk:Lcom/google/android/gms/internal/zzaa;

.field private zzq:Lcom/google/android/gms/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzv;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;I)V
    .locals 2

    new-instance p3, Lcom/google/android/gms/internal/zzi;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/zzi;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzv;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;ILcom/google/android/gms/internal/zzaa;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;ILcom/google/android/gms/internal/zzaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzv;->zzba:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzv;->zzbb:Ljava/util/Set;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzv;->zzbc:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzv;->zzbd:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzv;->zzbf:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzv;->zzj:Lcom/google/android/gms/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzv;->zzaa:Lcom/google/android/gms/internal/zzm;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/zzn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzv;->zzbe:[Lcom/google/android/gms/internal/zzn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzv;->zzk:Lcom/google/android/gms/internal/zzaa;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzq:Lcom/google/android/gms/internal/zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzq:Lcom/google/android/gms/internal/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzd;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbe:[Lcom/google/android/gms/internal/zzn;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzn;->quit()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzv;->zzbc:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzv;->zzbd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzv;->zzj:Lcom/google/android/gms/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzv;->zzk:Lcom/google/android/gms/internal/zzaa;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzd;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzaa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzq:Lcom/google/android/gms/internal/zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzq:Lcom/google/android/gms/internal/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzd;->start()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbe:[Lcom/google/android/gms/internal/zzn;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzv;->zzbd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzv;->zzaa:Lcom/google/android/gms/internal/zzm;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzv;->zzj:Lcom/google/android/gms/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzv;->zzk:Lcom/google/android/gms/internal/zzaa;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzn;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzm;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzaa;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzv;->zzbe:[Lcom/google/android/gms/internal/zzn;

    aput-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzn;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzr<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzr<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzv;)Lcom/google/android/gms/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbb:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzbb:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzba:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzr;->zza(I)Lcom/google/android/gms/internal/zzr;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->zzg()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbd:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbc:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final zzf(Lcom/google/android/gms/internal/zzr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzr<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbb:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzbb:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzbf:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzw;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzw;->zzg(Lcom/google/android/gms/internal/zzr;)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
