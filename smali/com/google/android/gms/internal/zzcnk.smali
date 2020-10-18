.class final Lcom/google/android/gms/internal/zzcnk;
.super Lcom/google/android/gms/internal/zzcip;


# instance fields
.field private synthetic zzjhl:Lcom/google/android/gms/internal/zzckj;

.field private synthetic zzjsh:Lcom/google/android/gms/internal/zzcnj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnj;Lcom/google/android/gms/internal/zzckj;Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcnk;->zzjsh:Lcom/google/android/gms/internal/zzcnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcnk;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnk;->zzjsh:Lcom/google/android/gms/internal/zzcnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnj;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnk;->zzjsh:Lcom/google/android/gms/internal/zzcnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnk;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzbby()V

    return-void
.end method
