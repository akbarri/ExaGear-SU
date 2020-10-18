.class final Lcom/google/android/gms/internal/zzcne;
.super Lcom/google/android/gms/internal/zzcip;


# instance fields
.field private synthetic zzjse:Lcom/google/android/gms/internal/zzcnd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnd;Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcne;->zzjse:Lcom/google/android/gms/internal/zzcnd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcne;->zzjse:Lcom/google/android/gms/internal/zzcnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Session started, time"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcju;->zzjmc:Lcom/google/android/gms/internal/zzcjw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjw;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayd()Lcom/google/android/gms/internal/zzclk;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_s"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzclk;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcju;->zzjmd:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    return-void
.end method
