.class final Lcom/google/android/gms/internal/zzcmc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjqy:Lcom/google/android/gms/internal/zzcma;

.field private synthetic zzjqz:Lcom/google/android/gms/internal/zzcmd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcma;Lcom/google/android/gms/internal/zzcmd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmc;->zzjqy:Lcom/google/android/gms/internal/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmc;->zzjqz:Lcom/google/android/gms/internal/zzcmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmc;->zzjqy:Lcom/google/android/gms/internal/zzcma;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmc;->zzjqz:Lcom/google/android/gms/internal/zzcmd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcma;->zza(Lcom/google/android/gms/internal/zzcma;Lcom/google/android/gms/internal/zzcmd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmc;->zzjqy:Lcom/google/android/gms/internal/zzcma;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcma;->zzjqm:Lcom/google/android/gms/internal/zzcmd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmc;->zzjqy:Lcom/google/android/gms/internal/zzcma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayg()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzclz;)V

    return-void
.end method
