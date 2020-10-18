.class final Lcom/google/android/gms/common/internal/zzbl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private synthetic zzghq:Lcom/google/android/gms/common/api/PendingResult;

.field private synthetic zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzghs:Lcom/google/android/gms/common/internal/zzbo;

.field private synthetic zzght:Lcom/google/android/gms/common/internal/zzbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/internal/zzbp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghq:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghs:Lcom/google/android/gms/common/internal/zzbo;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzbl;->zzght:Lcom/google/android/gms/common/internal/zzbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghq:Lcom/google/android/gms/common/api/PendingResult;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghs:Lcom/google/android/gms/common/internal/zzbo;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzbl;->zzghr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzbl;->zzght:Lcom/google/android/gms/common/internal/zzbp;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/zzbp;->zzz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
