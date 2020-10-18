.class public abstract Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field private static final zzgfx:Ljava/lang/Object;

.field private static zzgfy:Ljava/lang/ClassLoader;

.field private static zzgfz:Ljava/lang/Integer;


# instance fields
.field private zzgga:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzgfx:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzgga:Z

    return-void
.end method

.method private static zzamp()Ljava/lang/ClassLoader;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzgfx:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static zzamq()Ljava/lang/Integer;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzgfx:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static zzgq(Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzamp()Ljava/lang/ClassLoader;

    const/4 p0, 0x1

    return p0
.end method
