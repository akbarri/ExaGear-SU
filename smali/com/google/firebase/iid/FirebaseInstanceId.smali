.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;


# static fields
.field private static zzimu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzokn:J

.field private static zzoko:Lcom/google/firebase/iid/zzaa;

.field private static zzokp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private zzimx:Ljava/security/KeyPair;

.field private final zzmwq:Lcom/google/firebase/FirebaseApp;

.field private final zzokq:Lcom/google/firebase/iid/zzw;

.field private final zzokr:Lcom/google/firebase/iid/zzx;

.field private zzoks:Z

.field private zzokt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokn:J

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimu:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoks:Z

    invoke-static {p1}, Lcom/google/firebase/iid/zzw;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    new-instance v0, Lcom/google/firebase/iid/zzx;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzx;-><init>(Landroid/content/Context;Lcom/google/firebase/iid/zzw;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokr:Lcom/google/firebase/iid/zzx;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokt:Z

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclk()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclb()V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 4
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimu:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/zzaa;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/zzaa;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    :cond_0
    new-instance v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    new-instance v2, Lcom/google/firebase/iid/zzw;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/iid/zzw;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzw;)V

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimu:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized startSync()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoks:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcd(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzawp()Ljava/security/KeyPair;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimx:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaa;->zzrs(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimx:Ljava/security/KeyPair;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimx:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaa;->zzrq(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimx:Ljava/security/KeyPair;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimx:Ljava/security/KeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appid"

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {p2}, Lcom/google/firebase/iid/zzw;->zzclo()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {p2}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {p2}, Lcom/google/firebase/iid/zzw;->zzcln()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fiid-12211000"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokr:Lcom/google/firebase/iid/zzx;

    invoke-virtual {p1, p3}, Lcom/google/firebase/iid/zzx;->zzah(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p2, "registration_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    const-string p2, "unregistered"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    const-string p2, "error"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "RST"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclg()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "INSTANCE_ID_RESET"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p2, "FirebaseInstanceId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unexpected response: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static zzb(Ljava/lang/Runnable;J)V
    .locals 3

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokp:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final zzclb()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclc()Lcom/google/firebase/iid/zzab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzab;->zzru(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaa;->zzcls()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_1
    return-void
.end method

.method static zzcle()Lcom/google/firebase/iid/zzaa;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    return-object v0
.end method

.method static zzclf()Z
    .locals 3

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzcli()Z
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auto_init"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "auto_init"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "firebase_messaging_auto_init_enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "firebase_messaging_auto_init_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj()Z

    move-result v0

    return v0
.end method

.method private final zzclj()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.google.firebase.messaging.FirebaseMessaging"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    return v3
.end method


# virtual methods
.method public deleteInstanceId()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iid-operation"

    const-string v2, "delete"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "*"

    const-string v2, "*"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclg()V

    return-void
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzaa;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaa;->zzrp(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclb()V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzawp()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/zzw;->zzb(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclc()Lcom/google/firebase/iid/zzab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzab;->zzru(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/firebase/iid/zzab;->zzlnm:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzaa;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzab;->zzru(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, v0, Lcom/google/firebase/iid/zzab;->zzlnm:Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v2, ""

    iget-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/iid/zzaa;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method final declared-synchronized zzcd(J)V
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    :try_start_0
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokn:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v3, Lcom/google/firebase/iid/zzac;

    iget-object v4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/google/firebase/iid/zzac;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzw;J)V

    invoke-static {v3, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/Runnable;J)V

    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zzclc()Lcom/google/firebase/iid/zzab;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/firebase/iid/zzw;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzaa;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzab;

    move-result-object v0

    return-object v0
.end method

.method final zzcld()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzw;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized zzclg()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaa;->zzawz()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzimx:Ljava/security/KeyPair;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzclh()V
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaa;->zzrr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method public final declared-synchronized zzclk()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzcy(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcz(Z)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmwq:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_init"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokt:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclb()V

    :cond_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzrl(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzoko:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzaa;->zzrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zzrm(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclc()Lcom/google/firebase/iid/zzab;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzab;->zzru(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gcm.topic"

    const-string v3, "/topics/"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/firebase/iid/zzab;->zzlnm:Ljava/lang/String;

    const-string v2, "/topics/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void

    :cond_3
    :goto_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzrn(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclc()Lcom/google/firebase/iid/zzab;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzab;->zzru(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gcm.topic"

    const-string v3, "/topics/"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delete"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/firebase/iid/zzab;->zzlnm:Ljava/lang/String;

    const-string v2, "/topics/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void

    :cond_3
    :goto_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
