.class public final Lcom/google/android/gms/flags/impl/zzj;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static zzhqo:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static zzdk(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/flags/impl/zzj;->zzhqo:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/flags/impl/zzk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/flags/impl/zzk;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzccq;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    sput-object p0, Lcom/google/android/gms/flags/impl/zzj;->zzhqo:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lcom/google/android/gms/flags/impl/zzj;->zzhqo:Landroid/content/SharedPreferences;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
