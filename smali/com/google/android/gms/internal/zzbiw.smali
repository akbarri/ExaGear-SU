.class abstract Lcom/google/android/gms/internal/zzbiw;
.super Lcom/google/android/gms/internal/zzbiv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbiv<",
        "Lcom/google/android/gms/internal/zzbio;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzgme:Lcom/google/android/gms/internal/zzbjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzbix;-><init>(Lcom/google/android/gms/internal/zzbiw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiw;->zzgme:Lcom/google/android/gms/internal/zzbjj;

    return-void
.end method
