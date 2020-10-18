.class final Lcom/google/android/gms/internal/zzcki;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic zzjnm:Lcom/google/android/gms/internal/zzcke;

.field private final zzjnp:Ljava/lang/Object;

.field private final zzjnq:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzckh<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcke;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzckh<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcki;->zzjnp:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnq:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzcki;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/InterruptedException;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcki;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzcke;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcki;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzckh;

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/google/android/gms/internal/zzckh;->zzjno:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    const/16 v3, 0xa

    :goto_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckh;->run()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnp:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcke;->zzb(Lcom/google/android/gms/internal/zzcke;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_3

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnp:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzcki;->zza(Ljava/lang/InterruptedException;)V

    :cond_3
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcke;->zzc(Lcom/google/android/gms/internal/zzcke;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcke;->zzc(Lcom/google/android/gms/internal/zzcke;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzcke;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcke;->zzc(Lcom/google/android/gms/internal/zzcke;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcke;->zzd(Lcom/google/android/gms/internal/zzcke;)Lcom/google/android/gms/internal/zzcki;

    move-result-object v2

    if-ne p0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzcke;Lcom/google/android/gms/internal/zzcki;)Lcom/google/android/gms/internal/zzcki;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcke;->zze(Lcom/google/android/gms/internal/zzcke;)Lcom/google/android/gms/internal/zzcki;

    move-result-object v2

    if-ne p0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzcke;->zzb(Lcom/google/android/gms/internal/zzcke;Lcom/google/android/gms/internal/zzcki;)Lcom/google/android/gms/internal/zzcki;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_6
    :try_start_8
    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcke;->zzc(Lcom/google/android/gms/internal/zzcke;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzcke;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcke;->zzc(Lcom/google/android/gms/internal/zzcke;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcke;->zzd(Lcom/google/android/gms/internal/zzcke;)Lcom/google/android/gms/internal/zzcki;

    move-result-object v3

    if-ne p0, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzcke;->zza(Lcom/google/android/gms/internal/zzcke;Lcom/google/android/gms/internal/zzcki;)Lcom/google/android/gms/internal/zzcki;

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcke;->zze(Lcom/google/android/gms/internal/zzcke;)Lcom/google/android/gms/internal/zzcki;

    move-result-object v3

    if-ne p0, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzcke;->zzb(Lcom/google/android/gms/internal/zzcke;Lcom/google/android/gms/internal/zzcki;)Lcom/google/android/gms/internal/zzcki;

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcki;->zzjnm:Lcom/google/android/gms/internal/zzcke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v3, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :goto_5
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method

.method public final zzsl()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcki;->zzjnp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcki;->zzjnp:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
