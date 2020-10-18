.class final Lcom/google/android/gms/internal/zzckp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjpj:Lcom/google/android/gms/internal/zzcif;

.field private synthetic zzjpk:Lcom/google/android/gms/internal/zzcko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckp;->zzjpk:Lcom/google/android/gms/internal/zzcko;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckp;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjpk:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzbcc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjpk:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckp;->zzjpj:Lcom/google/android/gms/internal/zzcif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckj;->zze(Lcom/google/android/gms/internal/zzcif;)V

    return-void
.end method
