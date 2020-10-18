.class final Lcom/google/android/gms/internal/zzbfm;
.super Lcom/google/android/gms/internal/zzbfk;


# instance fields
.field private synthetic zzfqi:Lcom/google/android/gms/internal/zzbfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfm;->zzfqi:Lcom/google/android/gms/internal/zzbfl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbfk;-><init>(Lcom/google/android/gms/internal/zzbfj;)V

    return-void
.end method


# virtual methods
.method public final zzo(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfm;->zzfqi:Lcom/google/android/gms/internal/zzbfl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
