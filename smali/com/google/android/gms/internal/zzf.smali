.class final Lcom/google/android/gms/internal/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzt;


# instance fields
.field private final zzp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final zzq:Lcom/google/android/gms/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzf;->zzq:Lcom/google/android/gms/internal/zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzf;Lcom/google/android/gms/internal/zzr;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzf;->zzb(Lcom/google/android/gms/internal/zzr;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/zzr;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v4, "waiting-for-response"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/google/android/gms/internal/zzaf;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzaf;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzt;)V

    sget-boolean p1, Lcom/google/android/gms/internal/zzaf;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "new request, sending to network %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzaf;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/zzr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/google/android/gms/internal/zzaf;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzr;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzr;->zza(Lcom/google/android/gms/internal/zzt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzf;->zzq:Lcom/google/android/gms/internal/zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzd;->zza(Lcom/google/android/gms/internal/zzd;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaf;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzf;->zzq:Lcom/google/android/gms/internal/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzd;->quit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;",
            "Lcom/google/android/gms/internal/zzx<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/zzx;->zzbg:Lcom/google/android/gms/internal/zzc;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzx;->zzbg:Lcom/google/android/gms/internal/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzc;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzf;->zzp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/google/android/gms/internal/zzaf;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzf;->zzq:Lcom/google/android/gms/internal/zzd;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzd;->zzb(Lcom/google/android/gms/internal/zzd;)Lcom/google/android/gms/internal/zzaa;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/zzaa;->zzb(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzf;->zza(Lcom/google/android/gms/internal/zzr;)V

    return-void
.end method
