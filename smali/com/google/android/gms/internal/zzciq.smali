.class final Lcom/google/android/gms/internal/zzciq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhl:Lcom/google/android/gms/internal/zzckj;

.field private synthetic zzjhm:Lcom/google/android/gms/internal/zzcip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcip;Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzjhm:Lcom/google/android/gms/internal/zzcip;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzciq;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    invoke-static {}, Lcom/google/android/gms/internal/zzcke;->zzas()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjhm:Lcom/google/android/gms/internal/zzcip;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcip;->zza(Lcom/google/android/gms/internal/zzcip;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjhm:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->zzea()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciq;->zzjhm:Lcom/google/android/gms/internal/zzcip;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzcip;->zza(Lcom/google/android/gms/internal/zzcip;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjhm:Lcom/google/android/gms/internal/zzcip;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcip;->zzb(Lcom/google/android/gms/internal/zzcip;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjhm:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->run()V

    :cond_1
    return-void
.end method
