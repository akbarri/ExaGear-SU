.class final Lcom/google/android/gms/common/api/internal/zzdl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzdn;


# instance fields
.field private synthetic zzgbu:Lcom/google/android/gms/common/api/internal/zzdk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzdk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzdl;->zzgbu:Lcom/google/android/gms/common/api/internal/zzdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdl;->zzgbu:Lcom/google/android/gms/common/api/internal/zzdk;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
