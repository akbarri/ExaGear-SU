.class public final Lcom/google/android/gms/internal/zzdob;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static zzaiq:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static zzciw:Z

.field private static final zzkgs:Ljava/lang/Object;

.field private static zzkgt:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdob;->zzkgs:Ljava/lang/Object;

    return-void
.end method

.method public static maybeInit(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdob;->zzaiq:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdob;->zzch(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static zzch(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdob;->zzkgs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/zzdob;->zzaiq:Landroid/content/Context;

    if-eq v1, p0, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/zzdob;->zzkgt:Ljava/lang/Boolean;

    :cond_2
    sput-object p0, Lcom/google/android/gms/internal/zzdob;->zzaiq:Landroid/content/Context;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/google/android/gms/internal/zzdob;->zzciw:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
