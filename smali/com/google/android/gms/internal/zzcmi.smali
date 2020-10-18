.class final Lcom/google/android/gms/internal/zzcmi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjpj:Lcom/google/android/gms/internal/zzcif;

.field private synthetic zzjri:Lcom/google/android/gms/internal/zzcme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcme;Lcom/google/android/gms/internal/zzcif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmi;->zzjri:Lcom/google/android/gms/internal/zzcme;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmi;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmi;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zzd(Lcom/google/android/gms/internal/zzcme;)Lcom/google/android/gms/internal/zzcjb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmi;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmi;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcjb;->zza(Lcom/google/android/gms/internal/zzcif;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmi;->zzjri:Lcom/google/android/gms/internal/zzcme;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmi;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzcjb;Lcom/google/android/gms/internal/zzbgl;Lcom/google/android/gms/internal/zzcif;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmi;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zze(Lcom/google/android/gms/internal/zzcme;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmi;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
