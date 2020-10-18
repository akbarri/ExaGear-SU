.class Lcom/google/android/gms/tasks/zzp$zza;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzffp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/tasks/zzm<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzcf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/zzcf;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzffp:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzgam:Lcom/google/android/gms/common/api/internal/zzcf;

    const-string v0, "TaskOnStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/zzcf;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zzs(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzp$zza;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tasks/zzp$zza;->zzo(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zzcf;

    move-result-object p0

    const-string v0, "TaskOnStopCallback"

    const-class v1, Lcom/google/android/gms/tasks/zzp$zza;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zzcf;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzp$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tasks/zzp$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzp$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzcf;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzffp:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzffp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/zzm;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/tasks/zzm;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzffp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/tasks/zzm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/zzm<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzffp:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp$zza;->zzffp:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
