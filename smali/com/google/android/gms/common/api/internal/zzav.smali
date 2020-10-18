.class final Lcom/google/android/gms/common/api/internal/zzav;
.super Lcom/google/android/gms/internal/zzcyo;


# instance fields
.field private final zzfxu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zzao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcyo;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzav;->zzfxu:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzcyw;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzav;->zzfxu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzao;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzc(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/api/internal/zzbi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzaw;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/zzaw;-><init>(Lcom/google/android/gms/common/api/internal/zzav;Lcom/google/android/gms/common/api/internal/zzbh;Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/internal/zzcyw;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzbi;->zza(Lcom/google/android/gms/common/api/internal/zzbj;)V

    return-void
.end method
