.class final Lcom/google/android/gms/common/api/internal/zzbb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzaf;


# instance fields
.field private synthetic zzfyr:Lcom/google/android/gms/common/api/internal/zzba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbb;->zzfyr:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbb;->zzfyr:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final zzagp()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
