.class final Lcom/google/android/gms/common/api/internal/zzx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcd;


# instance fields
.field private synthetic zzfwc:Lcom/google/android/gms/common/api/internal/zzv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzv;Lcom/google/android/gms/common/api/internal/zzw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzx;-><init>(Lcom/google/android/gms/common/api/internal/zzv;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzv;->zzb(Lcom/google/android/gms/common/api/internal/zzv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zzf(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zzc(Lcom/google/android/gms/common/api/internal/zzv;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zzd(Lcom/google/android/gms/common/api/internal/zzv;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zzd(Lcom/google/android/gms/common/api/internal/zzv;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;Z)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zzv;->zze(Lcom/google/android/gms/common/api/internal/zzv;)Lcom/google/android/gms/common/api/internal/zzbi;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zzbi;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zzk(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzfqt:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzv;->zzb(Lcom/google/android/gms/common/api/internal/zzv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzx;->zzfwc:Lcom/google/android/gms/common/api/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzv;->zza(Lcom/google/android/gms/common/api/internal/zzv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
