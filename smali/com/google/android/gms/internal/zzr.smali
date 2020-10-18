.class public abstract Lcom/google/android/gms/internal/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzr<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzae:Lcom/google/android/gms/internal/zzaf$zza;

.field private final zzaf:I

.field private final zzag:Ljava/lang/String;

.field private final zzah:I

.field private zzai:Lcom/google/android/gms/internal/zzy;

.field private zzaj:Ljava/lang/Integer;

.field private zzak:Lcom/google/android/gms/internal/zzv;

.field private zzal:Z

.field private zzam:Z

.field private zzan:Z

.field private zzao:Z

.field private zzap:Lcom/google/android/gms/internal/zzab;

.field private zzaq:Lcom/google/android/gms/internal/zzc;

.field private zzar:Lcom/google/android/gms/internal/zzt;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/zzaf$zza;->zzbk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zza;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzae:Lcom/google/android/gms/internal/zzaf$zza;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzr;->zzal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzr;->zzam:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzr;->zzan:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzr;->zzao:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzr;->zzaq:Lcom/google/android/gms/internal/zzc;

    iput p1, p0, Lcom/google/android/gms/internal/zzr;->zzaf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzr;->zzag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzr;->zzai:Lcom/google/android/gms/internal/zzy;

    new-instance p1, Lcom/google/android/gms/internal/zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzr;->zzap:Lcom/google/android/gms/internal/zzab;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/zzr;->zzah:I

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzaf$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzr;->zzae:Lcom/google/android/gms/internal/zzaf$zza;

    return-object p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzr;

    sget-object v0, Lcom/google/android/gms/internal/zzu;->zzaw:Lcom/google/android/gms/internal/zzu;

    sget-object v1, Lcom/google/android/gms/internal/zzu;->zzaw:Lcom/google/android/gms/internal/zzu;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzaj:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzr;->zzaj:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzu;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzu;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzr;->zzaf:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzag:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "0x"

    iget v1, p0, Lcom/google/android/gms/internal/zzr;->zzah:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, "[ ] "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzr;->zzag:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/zzu;->zzaw:Lcom/google/android/gms/internal/zzu;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzr;->zzaj:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/zzr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzr;->zzaj:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzc;)Lcom/google/android/gms/internal/zzr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzc;",
            ")",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzr;->zzaq:Lcom/google/android/gms/internal/zzc;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzv;)Lcom/google/android/gms/internal/zzr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzv;",
            ")",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzr;->zzak:Lcom/google/android/gms/internal/zzv;

    return-object p0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzp;)Lcom/google/android/gms/internal/zzx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzp;",
            ")",
            "Lcom/google/android/gms/internal/zzx<",
            "TT;>;"
        }
    .end annotation
.end method

.method final zza(Lcom/google/android/gms/internal/zzt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzr;->zzar:Lcom/google/android/gms/internal/zzt;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/zzx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzx<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzr;->zzar:Lcom/google/android/gms/internal/zzt;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract zza(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzae;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzr;->zzai:Lcom/google/android/gms/internal/zzy;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzy;->zzd(Lcom/google/android/gms/internal/zzae;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/zzaf$zza;->zzbk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzae:Lcom/google/android/gms/internal/zzaf$zza;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzaf$zza;->zza(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzak:Lcom/google/android/gms/internal/zzv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzak:Lcom/google/android/gms/internal/zzv;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzv;->zzf(Lcom/google/android/gms/internal/zzr;)V

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzaf$zza;->zzbk:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/zzs;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzs;-><init>(Lcom/google/android/gms/internal/zzr;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzr;->zzae:Lcom/google/android/gms/internal/zzaf$zza;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/zzaf$zza;->zza(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzr;->zzae:Lcom/google/android/gms/internal/zzaf$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzr;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaf$zza;->zzc(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzr;->zzah:I

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzaq:Lcom/google/android/gms/internal/zzc;

    return-object v0
.end method

.method public zzf()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzr;->zzal:Z

    return v0
.end method

.method public final zzh()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzap:Lcom/google/android/gms/internal/zzab;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzab;->zzb()I

    move-result v0

    return v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/zzab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->zzap:Lcom/google/android/gms/internal/zzab;

    return-object v0
.end method

.method public final zzj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzr;->zzan:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzk()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzr;->zzan:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zzl()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzr;->zzar:Lcom/google/android/gms/internal/zzt;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzr;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
