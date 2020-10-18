.class final Lcom/google/android/gms/common/api/internal/zzax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private synthetic zzfxt:Lcom/google/android/gms/common/api/internal/zzao;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/api/internal/zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzax;-><init>(Lcom/google/android/gms/common/api/internal/zzao;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/internal/zzcyj;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzav;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zzav;-><init>(Lcom/google/android/gms/common/api/internal/zzao;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzcyj;->zza(Lcom/google/android/gms/internal/zzcyp;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzh(Lcom/google/android/gms/common/api/internal/zzao;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzi(Lcom/google/android/gms/common/api/internal/zzao;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zza(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzax;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
