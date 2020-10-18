.class final Lcom/google/android/gms/common/api/internal/zzcx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfyb:Lcom/google/android/gms/internal/zzcyw;

.field private synthetic zzgbe:Lcom/google/android/gms/common/api/internal/zzcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzcv;Lcom/google/android/gms/internal/zzcyw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcx;->zzgbe:Lcom/google/android/gms/common/api/internal/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzcx;->zzfyb:Lcom/google/android/gms/internal/zzcyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcx;->zzgbe:Lcom/google/android/gms/common/api/internal/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzcx;->zzfyb:Lcom/google/android/gms/internal/zzcyw;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzcv;->zza(Lcom/google/android/gms/common/api/internal/zzcv;Lcom/google/android/gms/internal/zzcyw;)V

    return-void
.end method
