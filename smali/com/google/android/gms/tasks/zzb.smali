.class final Lcom/google/android/gms/tasks/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzldy:Lcom/google/android/gms/tasks/Task;

.field private synthetic zzldz:Lcom/google/android/gms/tasks/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zzldz:Lcom/google/android/gms/tasks/zza;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzb;->zzldy:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzldz:Lcom/google/android/gms/tasks/zza;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zza;->zza(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb;->zzldy:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb;->zzldz:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzp;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb;->zzldz:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzp;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb;->zzldz:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzp;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzb;->zzldz:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzp;->setException(Ljava/lang/Exception;)V

    return-void
.end method
