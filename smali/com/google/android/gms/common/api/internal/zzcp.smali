.class public final Lcom/google/android/gms/common/api/internal/zzcp;
.super Ljava/lang/Object;


# instance fields
.field public final zzgay:Lcom/google/android/gms/common/api/internal/zza;

.field public final zzgaz:I

.field public final zzgba:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zza;ILcom/google/android/gms/common/api/GoogleApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zza;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcp;->zzgay:Lcom/google/android/gms/common/api/internal/zza;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zzcp;->zzgaz:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzcp;->zzgba:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
