.class public final Lcom/google/android/gms/internal/zzccl;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private zzarf:Z

.field private zzhqe:Lcom/google/android/gms/internal/zzccm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzccl;->zzarf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccl;->zzhqe:Lcom/google/android/gms/internal/zzccm;

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccl;->zzarf:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhdn:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v1, "com.google.android.gms.flags"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.android.gms.flags.impl.FlagProviderImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzccn;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzccm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccl;->zzhqe:Lcom/google/android/gms/internal/zzccm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccl;->zzhqe:Lcom/google/android/gms/internal/zzccm;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzccm;->init(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzccl;->zzarf:Z
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "FlagValueProvider"

    const-string v1, "Failed to initialize flags module."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcce;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzcce<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccl;->zzarf:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcce;->zzje()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccl;->zzhqe:Lcom/google/android/gms/internal/zzccm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcce;->zza(Lcom/google/android/gms/internal/zzccm;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
