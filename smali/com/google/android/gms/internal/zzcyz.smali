.class public final Lcom/google/android/gms/internal/zzcyz;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "WakeLock"

.field private static zzimq:Ljava/util/concurrent/ScheduledExecutorService; = null

.field private static zzkma:Ljava/lang/String; = "*gcore*:"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzgjx:Ljava/lang/String;

.field private final zzgjz:Ljava/lang/String;

.field private final zzkmb:Landroid/os/PowerManager$WakeLock;

.field private zzkmc:Landroid/os/WorkSource;

.field private final zzkmd:I

.field private final zzkme:Ljava/lang/String;

.field private zzkmf:Z

.field private final zzkmg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzkmh:I

.field private zzkmi:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcyz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcyz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p6, 0x0

    invoke-direct {p4, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmi:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p4, "Wake lock name can NOT be empty"

    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmd:I

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcyz;->zzkme:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcyz;->zzgjz:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcyz;->mContext:Landroid/content/Context;

    const-string p4, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    sget-object p4, Lcom/google/android/gms/internal/zzcyz;->zzkma:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p4, p6

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzcyz;->zzgjx:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/internal/zzcyz;->zzgjx:Ljava/lang/String;

    :goto_1
    const-string p4, "power"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerManager;

    invoke-virtual {p4, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcyz;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzaa;->zzda(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzw;->zzhb(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_2
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzaa;->zzw(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcyz;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzaa;->zzda(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    invoke-virtual {p2, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/zzcyz;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/zzcyz;->zzimq:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzbhg;->zzanc()Lcom/google/android/gms/internal/zzbhi;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbhi;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/internal/zzcyz;->zzimq:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_5
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcyz;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcyz;->zzew(I)V

    return-void
.end method

.method private final zzew(I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzcyz;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzgjx:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "was already released!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    throw p1

    :cond_1
    return-void
.end method

.method private final zzlf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkme:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkme:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final acquire(J)V
    .locals 11

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcyz;->zzlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    const/4 v10, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    new-array v0, v10, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v10

    goto :goto_0

    :cond_2
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    :goto_0
    if-nez p2, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzanp()Lcom/google/android/gms/common/stats/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1, v4}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcyz;->zzgjx:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmd:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzaa;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object p1, Lcom/google/android/gms/internal/zzcyz;->zzimq:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/zzcza;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzcza;-><init>(Lcom/google/android/gms/internal/zzcyz;)V

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isHeld()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcyz;->TAG:Ljava/lang/String;

    const-string v1, "release without a matched acquire!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcyz;->zzlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_1

    :goto_0
    move v0, v10

    goto :goto_1

    :cond_1
    aget-object v1, v0, v10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmg:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v9

    goto :goto_1

    :cond_2
    aget-object v1, v0, v10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    goto :goto_0

    :goto_1
    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    if-ne v0, v9, :cond_5

    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzanp()Lcom/google/android/gms/common/stats/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcyz;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcyz;->zzgjx:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmc:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzaa;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmh:I

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/zzcyz;->zzew(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setReferenceCounted(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmb:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcyz;->zzkmf:Z

    return-void
.end method
