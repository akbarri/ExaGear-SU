.class final Lcom/google/android/gms/internal/zzcmk;
.super Lcom/google/android/gms/internal/zzcip;


# instance fields
.field private synthetic zzjri:Lcom/google/android/gms/internal/zzcme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcme;Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmk;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmk;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void
.end method
