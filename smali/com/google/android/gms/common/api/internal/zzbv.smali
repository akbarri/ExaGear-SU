.class final Lcom/google/android/gms/common/api/internal/zzbv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzgab:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic zzgae:Lcom/google/android/gms/common/api/internal/zzbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzbu;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgab:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgab:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbu;->zza(Lcom/google/android/gms/common/api/internal/zzbu;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbu;->zza(Lcom/google/android/gms/common/api/internal/zzbu;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzacc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbu;->zzb(Lcom/google/android/gms/common/api/internal/zzbu;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbu;->zza(Lcom/google/android/gms/common/api/internal/zzbu;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzan;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfzq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbm;->zzj(Lcom/google/android/gms/common/api/internal/zzbm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgae:Lcom/google/android/gms/common/api/internal/zzbu;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzbu;->zzc(Lcom/google/android/gms/common/api/internal/zzbu;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzbo;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbv;->zzgab:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbo;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
