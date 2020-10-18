.class public final Lcom/google/android/gms/internal/zzd;
.super Ljava/lang/Thread;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final zzh:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/zzb;

.field private final zzk:Lcom/google/android/gms/internal/zzaa;

.field private volatile zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzaf;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzd;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzaa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;",
            "Lcom/google/android/gms/internal/zzb;",
            "Lcom/google/android/gms/internal/zzaa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzd;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzd;->zzh:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzd;->zzi:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzd;->zzj:Lcom/google/android/gms/internal/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzd;->zzk:Lcom/google/android/gms/internal/zzaa;

    new-instance p1, Lcom/google/android/gms/internal/zzf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzf;-><init>(Lcom/google/android/gms/internal/zzd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzd;->zzm:Lcom/google/android/gms/internal/zzf;

    return-void
.end method

.method private final processRequest()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd;->zzh:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzr;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzr;->isCanceled()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzj:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzc;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzm:Lcom/google/android/gms/internal/zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzf;->zza(Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzr;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzi:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzc;->zza()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzm:Lcom/google/android/gms/internal/zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzf;->zza(Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzr;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzi:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzp;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzc;->data:[B

    iget-object v4, v1, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzp;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzx;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzc;->zze:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-gez v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzr;

    iput-boolean v4, v2, Lcom/google/android/gms/internal/zzx;->zzbi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzm:Lcom/google/android/gms/internal/zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzf;->zza(Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzr;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzk:Lcom/google/android/gms/internal/zzaa;

    new-instance v3, Lcom/google/android/gms/internal/zze;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zze;-><init>(Lcom/google/android/gms/internal/zzd;Lcom/google/android/gms/internal/zzr;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaa;->zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd;->zzk:Lcom/google/android/gms/internal/zzaa;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzaa;->zzb(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzd;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzd;->zzi:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzd;)Lcom/google/android/gms/internal/zzaa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzd;->zzk:Lcom/google/android/gms/internal/zzaa;

    return-object p0
.end method


# virtual methods
.method public final quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzd;->zzl:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzd;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/zzd;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd;->zzj:Lcom/google/android/gms/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzb;->initialize()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzd;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzd;->zzl:Z

    if-eqz v0, :cond_1

    return-void
.end method
