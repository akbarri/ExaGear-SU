.class public final Lcom/google/android/gms/internal/zzcma;
.super Lcom/google/android/gms/internal/zzcli;


# instance fields
.field protected zzjqm:Lcom/google/android/gms/internal/zzcmd;

.field private volatile zzjqn:Lcom/google/android/gms/internal/zzclz;

.field private zzjqo:Lcom/google/android/gms/internal/zzclz;

.field private zzjqp:J

.field private final zzjqq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzcmd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjqr:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzjqs:Z

.field private zzjqt:Lcom/google/android/gms/internal/zzclz;

.field private zzjqu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqr:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcmd;Z)V
    .locals 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqo:Lcom/google/android/gms/internal/zzclz;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcma;->zzjqp:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqo:Lcom/google/android/gms/internal/zzclz;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzclz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzclz;-><init>(Lcom/google/android/gms/internal/zzclz;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqs:Z

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcma;->zzjqr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/AppMeasurement$zza;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, v1, p2}, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zza(Lcom/google/android/gms/internal/zzclz;Lcom/google/android/gms/internal/zzclz;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v0, v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v6, "onScreenChangeCallback threw exception"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqs:Z

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqo:Lcom/google/android/gms/internal/zzclz;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    :goto_4
    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcmd;->zzjqk:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcma;->zzkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/internal/zzcmd;->zzjqk:Ljava/lang/String;

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/zzcmd;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzcmd;-><init>(Lcom/google/android/gms/internal/zzcmd;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqo:Lcom/google/android/gms/internal/zzclz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqp:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v0, p0, p3, v1, p1}, Lcom/google/android/gms/internal/zzcmb;-><init>(Lcom/google/android/gms/internal/zzcma;ZLcom/google/android/gms/internal/zzclz;Lcom/google/android/gms/internal/zzcmd;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :goto_5
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqs:Z

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzclz;Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzclz;->zzjqj:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "_sn"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclz;->zzjqj:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "_sn"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    const-string p2, "_sc"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclz;->zzjqk:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_si"

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzclz;->zzjql:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez p0, :cond_3

    if-eqz p2, :cond_3

    const-string p0, "_sn"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "_sc"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "_si"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcma;Lcom/google/android/gms/internal/zzcmd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcma;->zza(Lcom/google/android/gms/internal/zzcmd;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcmd;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzcmd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayb()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->zzaj(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayn()Lcom/google/android/gms/internal/zzcnd;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcmd;->zzjra:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcnd;->zzbx(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzcmd;->zzjra:Z

    :cond_0
    return-void
.end method

.method private static zzkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcma;->zzr(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcmd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqo:Lcom/google/android/gms/internal/zzclz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcmc;-><init>(Lcom/google/android/gms/internal/zzcma;Lcom/google/android/gms/internal/zzcmd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcma;->zzr(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcmd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzcma;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcmd;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayb()Lcom/google/android/gms/internal/zzcia;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzclh;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcid;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/internal/zzcid;-><init>(Lcom/google/android/gms/internal/zzcia;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcmd;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzcmd;->zzjql:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcmd;->zzjqj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcmd;->zzjqk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v0, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayo()Lcom/google/android/gms/internal/zzcke;

    invoke-static {}, Lcom/google/android/gms/internal/zzcke;->zzas()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqs:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/zzcma;->zzkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclz;->zzjqk:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzclz;->zzjqj:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzcno;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbax()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v0, 0x64

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Setting current screen to name, class"

    if-nez p2, :cond_a

    const-string v2, "null"

    goto :goto_0

    :cond_a
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcmd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcno;->zzbcq()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/internal/zzcmd;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzcma;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcmd;Z)V

    return-void
.end method

.method public final unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclz;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqu:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqu:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcma;->zzjqu:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcma;->zzjqt:Lcom/google/android/gms/internal/zzclz;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzaxz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaxz()V

    return-void
.end method

.method public final bridge synthetic zzaya()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaya()V

    return-void
.end method

.method public final bridge synthetic zzayb()Lcom/google/android/gms/internal/zzcia;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayb()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayc()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayc()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayd()Lcom/google/android/gms/internal/zzclk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayd()Lcom/google/android/gms/internal/zzclk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaye()Lcom/google/android/gms/internal/zzcje;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaye()Lcom/google/android/gms/internal/zzcje;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayf()Lcom/google/android/gms/internal/zzcir;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayf()Lcom/google/android/gms/internal/zzcir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayg()Lcom/google/android/gms/internal/zzcme;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayg()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayh()Lcom/google/android/gms/internal/zzcma;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayh()Lcom/google/android/gms/internal/zzcma;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayi()Lcom/google/android/gms/internal/zzcjf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayi()Lcom/google/android/gms/internal/zzcjf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayj()Lcom/google/android/gms/internal/zzcil;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayj()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayk()Lcom/google/android/gms/internal/zzcjh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayl()Lcom/google/android/gms/internal/zzcno;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaym()Lcom/google/android/gms/internal/zzckd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaym()Lcom/google/android/gms/internal/zzckd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayn()Lcom/google/android/gms/internal/zzcnd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayn()Lcom/google/android/gms/internal/zzcnd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayo()Lcom/google/android/gms/internal/zzcke;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayp()Lcom/google/android/gms/internal/zzcjj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayq()Lcom/google/android/gms/internal/zzcju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayr()Lcom/google/android/gms/internal/zzcik;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayr()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    return-object v0
.end method

.method protected final zzazq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbcg()Lcom/google/android/gms/internal/zzcmd;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqm:Lcom/google/android/gms/internal/zzcmd;

    return-object v0
.end method

.method public final zzbch()Lcom/google/android/gms/internal/zzclz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqn:Lcom/google/android/gms/internal/zzclz;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzclz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzclz;-><init>(Lcom/google/android/gms/internal/zzclz;)V

    return-object v1
.end method

.method final zzr(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcmd;
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcmd;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcma;->zzkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcmd;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcno;->zzbcq()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzcmd;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjqq:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic zzwj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzwj()V

    return-void
.end method

.method public final bridge synthetic zzxx()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method
