.class final Lcom/google/android/gms/tasks/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$callable:Ljava/util/concurrent/Callable;

.field private synthetic zzler:Lcom/google/android/gms/tasks/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzp;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzq;->zzler:Lcom/google/android/gms/tasks/zzp;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzq;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzq;->zzler:Lcom/google/android/gms/tasks/zzp;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzq;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzp;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzq;->zzler:Lcom/google/android/gms/tasks/zzp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzp;->setException(Ljava/lang/Exception;)V

    return-void
.end method
