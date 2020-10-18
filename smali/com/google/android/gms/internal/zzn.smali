.class public final Lcom/google/android/gms/internal/zzn;
.super Ljava/lang/Thread;


# instance fields
.field private final zzaa:Lcom/google/android/gms/internal/zzm;

.field private final zzj:Lcom/google/android/gms/internal/zzb;

.field private final zzk:Lcom/google/android/gms/internal/zzaa;

.field private volatile zzl:Z

.field private final zzz:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzm;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzaa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;",
            "Lcom/google/android/gms/internal/zzm;",
            "Lcom/google/android/gms/internal/zzb;",
            "Lcom/google/android/gms/internal/zzaa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzn;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzn;->zzz:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzn;->zzaa:Lcom/google/android/gms/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzn;->zzj:Lcom/google/android/gms/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzn;->zzk:Lcom/google/android/gms/internal/zzaa;

    return-void
.end method

.method private final processRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzn;->zzz:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzr;

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->isCanceled()Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->zzd()I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzn;->zzaa:Lcom/google/android/gms/internal/zzm;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/zzm;->zzc(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzp;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/google/android/gms/internal/zzp;->zzac:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->zzk()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzr;->zzc(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->zzl()V

    return-void

    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzx;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->zzg()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/zzx;->zzbg:Lcom/google/android/gms/internal/zzc;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzn;->zzj:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/zzx;->zzbg:Lcom/google/android/gms/internal/zzc;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/zzb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzc;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->zzj()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzn;->zzk:Lcom/google/android/gms/internal/zzaa;

    invoke-interface {v4, v2, v3}, Lcom/google/android/gms/internal/zzaa;->zzb(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzx;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzae; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/zzae;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/zzae;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzae;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzn;->zzk:Lcom/google/android/gms/internal/zzaa;

    invoke-interface {v0, v2, v4}, Lcom/google/android/gms/internal/zzaa;->zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzae;)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzr;->zzl()V

    return-void

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzae;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzn;->zzk:Lcom/google/android/gms/internal/zzaa;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzaa;->zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzae;)V

    goto :goto_0
.end method


# virtual methods
.method public final quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzn;->zzl:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzn;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzn;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzn;->zzl:Z

    if-eqz v0, :cond_0

    return-void
.end method
