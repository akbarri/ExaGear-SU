.class final Lcom/google/android/gms/internal/zzcnb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhl:Lcom/google/android/gms/internal/zzckj;

.field private synthetic zzjsa:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmy;Lcom/google/android/gms/internal/zzckj;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcnb;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcnb;->zzjsa:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnb;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzbcc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnb;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnb;->zzjsa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckj;->zzj(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnb;->zzjhl:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzbby()V

    return-void
.end method
