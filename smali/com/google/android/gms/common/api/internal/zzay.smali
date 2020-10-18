.class abstract Lcom/google/android/gms/common/api/internal/zzay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfxt:Lcom/google/android/gms/common/api/internal/zzao;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzay;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/api/internal/zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzay;-><init>(Lcom/google/android/gms/common/api/internal/zzao;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzay;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzay;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzay;->zzajj()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzay;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzao;->zzc(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/api/internal/zzbi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzbi;->zzb(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzay;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zzajj()V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
