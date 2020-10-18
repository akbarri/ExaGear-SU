.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_VALUE_FOR_BOOLEAN:Z = false

.field public static final DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

.field public static final DEFAULT_VALUE_FOR_DOUBLE:D = 0.0

.field public static final DEFAULT_VALUE_FOR_LONG:J = 0x0L

.field public static final DEFAULT_VALUE_FOR_STRING:Ljava/lang/String; = ""

.field public static final LAST_FETCH_STATUS_FAILURE:I = 0x1

.field public static final LAST_FETCH_STATUS_NO_FETCH_YET:I = 0x0

.field public static final LAST_FETCH_STATUS_SUCCESS:I = -0x1

.field public static final LAST_FETCH_STATUS_THROTTLED:I = 0x2

.field public static final VALUE_SOURCE_DEFAULT:I = 0x1

.field public static final VALUE_SOURCE_REMOTE:I = 0x2

.field public static final VALUE_SOURCE_STATIC:I

.field private static zzosa:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzosb:Lcom/google/android/gms/internal/zzfap;

.field private zzosc:Lcom/google/android/gms/internal/zzfap;

.field private zzosd:Lcom/google/android/gms/internal/zzfap;

.field private zzose:Lcom/google/android/gms/internal/zzfas;

.field private final zzosf:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfas;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfas;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzfas;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfas;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    :goto_0
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    iget-object p5, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, p5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzfi(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfas;->zzco(J)V

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    :cond_2
    if-eqz p4, :cond_3

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 9

    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosa:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FirebaseApp has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosa:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzfj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzfax;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    const-string v0, "FirebaseRemoteConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "No persisted config was found. Initializing from scratch."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-direct {v0, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosa:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    goto :goto_2

    :cond_2
    const-string v2, "FirebaseRemoteConfig"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FirebaseRemoteConfig"

    const-string v2, "Initializing from persisted config."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lcom/google/android/gms/internal/zzfat;)Lcom/google/android/gms/internal/zzfap;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lcom/google/android/gms/internal/zzfat;)Lcom/google/android/gms/internal/zzfap;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lcom/google/android/gms/internal/zzfat;)Lcom/google/android/gms/internal/zzfap;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzfas;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzfas;-><init>()V

    iget v7, v1, Lcom/google/android/gms/internal/zzfav;->zzota:I

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    iget-boolean v7, v1, Lcom/google/android/gms/internal/zzfav;->zzotb:Z

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzfas;->zzdd(Z)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/zzfav;->zzotc:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/zzfas;->zzcp(J)V

    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza([Lcom/google/android/gms/internal/zzfay;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/zzfas;->zzav(Ljava/util/Map;)V

    :cond_5
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfas;)V

    goto :goto_0

    :cond_6
    :goto_2
    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosa:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-object v0

    :cond_7
    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosa:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-object v0
.end method

.method private static zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfat;)Lcom/google/android/gms/internal/zzfap;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfat;->zzosw:[Lcom/google/android/gms/internal/zzfaw;

    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzfaw;->zzkal:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v5, Lcom/google/android/gms/internal/zzfaw;->zzote:[Lcom/google/android/gms/internal/zzfau;

    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v5, v9

    iget-object v11, v10, Lcom/google/android/gms/internal/zzfau;->key:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzfau;->zzosz:[B

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfat;->zzosx:[[B

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzfap;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfat;->timestamp:J

    invoke-direct {v1, v0, v4, v5, v3}, Lcom/google/android/gms/internal/zzfap;-><init>(Ljava/util/Map;JLjava/util/List;)V

    return-object v1
.end method

.method private static zza([Lcom/google/android/gms/internal/zzfay;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/zzfay;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfam;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzfay;->zzkal:Ljava/lang/String;

    iget v5, v3, Lcom/google/android/gms/internal/zzfay;->resourceId:I

    iget-wide v6, v3, Lcom/google/android/gms/internal/zzfay;->zzotl:J

    new-instance v3, Lcom/google/android/gms/internal/zzfam;

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/zzfam;-><init>(IJ)V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzc(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/String;

    :goto_3
    sget-object v5, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    :goto_4
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    instance-of v5, v4, [B

    if-eqz v5, :cond_8

    check-cast v4, [B

    goto :goto_4

    :cond_8
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of a default value needs to beone of String, Long, Double, Boolean, or byte[]."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 p1, 0x0

    if-eqz v0, :cond_d

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzfap;->zzsk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzi(Ljava/util/Map;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfap;->setTimestamp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzfap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/google/android/gms/internal/zzfap;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    :cond_e
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/zzfap;->zzi(Ljava/util/Map;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_5

    :goto_7
    if-eqz p3, :cond_f

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfas;->zzsl(Ljava/lang/String;)V

    :cond_f
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzcnj()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_8
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final zzcnj()V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzfao;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    iget-object v6, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfao;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfas;)V

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzs(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private final zzfi(Landroid/content/Context;)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string v0, "FirebaseRemoteConfig"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x19

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Package ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] was not found!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static zzfj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzfax;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "persisted_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzflj;->zzo([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfax;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzfax;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Failed to close persisted config file."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v2

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2

    :catch_3
    move-exception v1

    move-object p0, v0

    :goto_0
    :try_start_3
    const-string v2, "FirebaseRemoteConfig"

    const-string v3, "Cannot initialize from persisted config."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    :catch_4
    move-exception p0

    const-string v1, "FirebaseRemoteConfig"

    const-string v2, "Failed to close persisted config file."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0

    :catch_5
    move-exception v1

    move-object p0, v0

    :goto_1
    :try_start_5
    const-string v2, "FirebaseRemoteConfig"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "FirebaseRemoteConfig"

    const-string v3, "Persisted config file was not found."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    if-eqz p0, :cond_4

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    const-string v1, "FirebaseRemoteConfig"

    const-string v2, "Failed to close persisted config file."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_5

    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    :catch_7
    move-exception p0

    const-string v1, "FirebaseRemoteConfig"

    const-string v2, "Failed to close persisted config file."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    throw v0
.end method

.method private static zzs(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public activateFetched()Z
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    iput-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzfap;->setTimestamp(J)V

    new-instance v2, Lcom/google/android/gms/internal/zzfap;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1, v3}, Lcom/google/android/gms/internal/zzfap;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfas;->zzcnp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfap;->zzaol()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzdyx;->zza(JLjava/util/List;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzfas;->zzcp(J)V

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfap;->zzaol()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzfan;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzfan;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    invoke-static {v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzs(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzcnj()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public fetch()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0xa8c0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetch(J)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzbin;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbin;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzbin;->zzaa(J)Lcom/google/android/gms/internal/zzbin;

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfas;->isDeveloperModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_rcn_developer"

    const-string p2, "true"

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzbin;->zzx(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbin;

    :cond_0
    const/16 p1, 0x283c

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbin;->zzcj(I)Lcom/google/android/gms/internal/zzbin;

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    const p2, 0x7fffffff

    const-wide/32 v2, 0x7fffffff

    const-wide/16 v4, -0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-gez p1, :cond_1

    long-to-int p1, v6

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbin;->zzcl(I)Lcom/google/android/gms/internal/zzbin;

    :cond_2
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_3

    long-to-int p2, v4

    :cond_3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzbin;->zzck(I)Lcom/google/android/gms/internal/zzbin;

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/zzbiz;

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbiz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbin;->zzaok()Lcom/google/android/gms/internal/zzbim;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/zzbii;->zzglu:Lcom/google/android/gms/internal/zzbik;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzbik;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbim;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/remoteconfig/zza;

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/remoteconfig/zza;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lcom/google/android/gms/internal/zzfar;->zzgmb:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_1
    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/zzfar;->zzgmc:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/google/android/gms/internal/zzfar;->zzgmb:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/zzfar;->zzgmc:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2

    :catch_0
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p1

    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfaq;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfaq;->zzcn(J)V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfas;->getLastFetchStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfaq;->zziy(I)V

    new-instance v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->isDeveloperModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setDeveloperModeEnabled(Z)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfaq;->setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getKeysByPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getKeysByPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2

    :catch_0
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p1

    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/zzfar;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const-string p1, ""

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .locals 1

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzfar;

    sget-object p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfar;-><init>([BI)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzfar;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosc:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzfar;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzfar;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosd:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzfap;->zzbm(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzfar;-><init>([BI)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzfar;

    sget-object p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfar;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfas;->isDeveloperModeEnabled()Z

    move-result v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->isDeveloperModeEnabled()Z

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzfas;->zzdd(Z)V

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzcnj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setDefaults(I)V
    .locals 1

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaults(ILjava/lang/String;)V

    return-void
.end method

.method public setDefaults(ILjava/lang/String;)V
    .locals 9

    const/4 v0, 0x3

    if-nez p2, :cond_1

    const-string p1, "FirebaseRemoteConfig"

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FirebaseRemoteConfig"

    const-string p2, "namespace cannot be null for setDefaults."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfas;->zzcnn()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfas;->zzcnn()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfas;->zzcnn()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfam;->getResourceId()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->zzcno()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfam;->zzcnk()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    const-string p1, "FirebaseRemoteConfig"

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FirebaseRemoteConfig"

    const-string p2, "Skipped setting defaults from resource file as this resource file was already applied."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    const/4 v8, 0x1

    if-eq v3, v8, :cond_9

    const/4 v8, 0x2

    if-ne v3, v8, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    :cond_4
    if-ne v3, v0, :cond_6

    const-string v3, "entry"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    move-object v7, v6

    :cond_5
    move-object v5, v4

    goto :goto_1

    :cond_6
    const/4 v8, 0x4

    if-ne v3, v8, :cond_8

    const-string v3, "key"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_7
    const-string v3, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :cond_8
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/zzfam;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->zzcno()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzfam;-><init>(IJ)V

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzfas;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfam;)V

    const/4 p1, 0x0

    invoke-direct {p0, v1, p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzc(Ljava/util/Map;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "FirebaseRemoteConfig"

    const-string v0, "Caught exception while parsing XML resource. Skipping setDefaults."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setDefaults(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "configns:firebase"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaults(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaults(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzc(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzbio;)V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/android/gms/internal/zzbio;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/16 v2, -0x196c

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x196b

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "FirebaseRemoteConfig"

    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown (successful) status code: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;

    invoke-direct {p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzcnj()V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :pswitch_0
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;

    invoke-direct {p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->zzaom()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p2, v8, v4, v5}, Lcom/google/android/gms/internal/zzbio;->zza(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzfap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->zzaol()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, v5, v6, p2}, Lcom/google/android/gms/internal/zzfap;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    invoke-virtual {p1, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->getThrottleEndTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfap;->zzcnm()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->zzaom()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2, v7, v4, v3}, Lcom/google/android/gms/internal/zzbio;->zza(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzfap;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbio;->zzaol()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/zzfap;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosb:Lcom/google/android/gms/internal/zzfap;

    :cond_8
    invoke-virtual {p1, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_5
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_6
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzosf:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_9
    :goto_7
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfas;->zziy(I)V

    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;

    invoke-direct {p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzcnj()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x196a
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1964
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
