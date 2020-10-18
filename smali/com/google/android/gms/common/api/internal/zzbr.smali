.class final Lcom/google/android/gms/common/api/internal/zzbr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzgaa:Lcom/google/android/gms/common/api/internal/zzbo;

.field private synthetic zzgab:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzbo;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbr;->zzgaa:Lcom/google/android/gms/common/api/internal/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbr;->zzgab:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbr;->zzgaa:Lcom/google/android/gms/common/api/internal/zzbo;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbr;->zzgab:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbo;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
