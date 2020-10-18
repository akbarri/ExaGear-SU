.class public final Lcom/google/android/gms/internal/zzbhg;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static zzgih:Lcom/google/android/gms/internal/zzbhi;


# direct methods
.method public static declared-synchronized zzanc()Lcom/google/android/gms/internal/zzbhi;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzbhg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzbhg;->zzgih:Lcom/google/android/gms/internal/zzbhi;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbhh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbhh;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/zzbhg;->zzgih:Lcom/google/android/gms/internal/zzbhi;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzbhg;->zzgih:Lcom/google/android/gms/internal/zzbhi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
