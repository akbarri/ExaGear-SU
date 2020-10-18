.class final Lcom/google/android/gms/common/api/internal/zzbs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzp;


# instance fields
.field final synthetic zzgaa:Lcom/google/android/gms/common/api/internal/zzbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzbo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbs;->zzgaa:Lcom/google/android/gms/common/api/internal/zzbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzako()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbs;->zzgaa:Lcom/google/android/gms/common/api/internal/zzbo;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbo;->zzfzq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/internal/zzbm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzbt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/internal/zzbs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
