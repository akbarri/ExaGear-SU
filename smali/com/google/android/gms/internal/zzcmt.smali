.class final Lcom/google/android/gms/internal/zzcmt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjrr:Lcom/google/android/gms/internal/zzcjb;

.field private synthetic zzjrs:Lcom/google/android/gms/internal/zzcms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcms;Lcom/google/android/gms/internal/zzcjb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrr:Lcom/google/android/gms/internal/zzcjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzcms;->zza(Lcom/google/android/gms/internal/zzcms;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcms;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcme;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcms;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcms;->zzjri:Lcom/google/android/gms/internal/zzcme;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmt;->zzjrr:Lcom/google/android/gms/internal/zzcjb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzcjb;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
