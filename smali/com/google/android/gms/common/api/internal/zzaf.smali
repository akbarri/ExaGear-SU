.class final Lcom/google/android/gms/common/api/internal/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private synthetic zzfwy:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field private synthetic zzfwz:Lcom/google/android/gms/common/api/internal/zzae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzae;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzaf;->zzfwz:Lcom/google/android/gms/common/api/internal/zzae;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzaf;->zzfwy:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzaf;->zzfwz:Lcom/google/android/gms/common/api/internal/zzae;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzae;->zza(Lcom/google/android/gms/common/api/internal/zzae;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaf;->zzfwy:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
