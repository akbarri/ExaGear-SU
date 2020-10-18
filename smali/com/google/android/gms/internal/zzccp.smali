.class public final Lcom/google/android/gms/internal/zzccp;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static zzhqf:Lcom/google/android/gms/internal/zzccp;


# instance fields
.field private final zzhqg:Lcom/google/android/gms/internal/zzcck;

.field private final zzhqh:Lcom/google/android/gms/internal/zzccl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzccp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzccp;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzccp;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzccp;->zzhqf:Lcom/google/android/gms/internal/zzccp;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcck;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcck;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zzhqg:Lcom/google/android/gms/internal/zzcck;

    new-instance v0, Lcom/google/android/gms/internal/zzccl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzccl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzccp;->zzhqh:Lcom/google/android/gms/internal/zzccl;

    return-void
.end method

.method private static zzasm()Lcom/google/android/gms/internal/zzccp;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzccp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzccp;->zzhqf:Lcom/google/android/gms/internal/zzccp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzasn()Lcom/google/android/gms/internal/zzcck;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzasm()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccp;->zzhqg:Lcom/google/android/gms/internal/zzcck;

    return-object v0
.end method

.method public static zzaso()Lcom/google/android/gms/internal/zzccl;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzasm()Lcom/google/android/gms/internal/zzccp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzccp;->zzhqh:Lcom/google/android/gms/internal/zzccl;

    return-object v0
.end method
