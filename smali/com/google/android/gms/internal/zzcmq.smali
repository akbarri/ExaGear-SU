.class final Lcom/google/android/gms/internal/zzcmq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjpj:Lcom/google/android/gms/internal/zzcif;

.field private synthetic zzjpp:Lcom/google/android/gms/internal/zzcnl;

.field private synthetic zzjri:Lcom/google/android/gms/internal/zzcme;

.field private synthetic zzjrm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcme;ZLcom/google/android/gms/internal/zzcnl;Lcom/google/android/gms/internal/zzcif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmq;->zzjri:Lcom/google/android/gms/internal/zzcme;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcmq;->zzjrm:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmq;->zzjpp:Lcom/google/android/gms/internal/zzcnl;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmq;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmq;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zzd(Lcom/google/android/gms/internal/zzcme;)Lcom/google/android/gms/internal/zzcjb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmq;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmq;->zzjri:Lcom/google/android/gms/internal/zzcme;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcmq;->zzjrm:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmq;->zzjpp:Lcom/google/android/gms/internal/zzcnl;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmq;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzcjb;Lcom/google/android/gms/internal/zzbgl;Lcom/google/android/gms/internal/zzcif;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmq;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zze(Lcom/google/android/gms/internal/zzcme;)V

    return-void
.end method
