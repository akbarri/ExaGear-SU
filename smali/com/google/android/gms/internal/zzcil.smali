.class final Lcom/google/android/gms/internal/zzcil;
.super Lcom/google/android/gms/internal/zzcli;


# static fields
.field private static final zzjgw:[Ljava/lang/String;

.field private static final zzjgx:[Ljava/lang/String;

.field private static final zzjgy:[Ljava/lang/String;

.field private static final zzjgz:[Ljava/lang/String;

.field private static final zzjha:[Ljava/lang/String;

.field private static final zzjhb:[Ljava/lang/String;


# instance fields
.field private final zzjhc:Lcom/google/android/gms/internal/zzcio;

.field private final zzjhd:Lcom/google/android/gms/internal/zzcni;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_sampled_complex_event_id"

    const-string v3, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v4, "last_sampling_rate"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v6, "last_exempt_from_sampling"

    const-string v7, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgw:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgx:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgy:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgz:[Ljava/lang/String;

    const-string v0, "has_realtime"

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcil;->zzjha:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcil;->zzjhb:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcni;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzcni;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcil;->zzjhd:Lcom/google/android/gms/internal/zzcni;

    const-string p1, "google_app_measurement.db"

    new-instance v0, Lcom/google/android/gms/internal/zzcio;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzcio;-><init>(Lcom/google/android/gms/internal/zzcil;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjhc:Lcom/google/android/gms/internal/zzcio;

    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p3

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p3

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p3

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p3

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p4, "Database error"

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcni;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcil;->zzjhd:Lcom/google/android/gms/internal/zzcni;

    return-object p0
.end method

.method private final zza(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zza(Lcom/google/android/gms/internal/zzcjj;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to turn off database read permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v1, "Failed to turn off database write permission"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to turn on database read permission for owner"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p0

    const-string p1, "Failed to turn on database write permission for owner"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzcjj;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzcil;->zza(Lcom/google/android/gms/internal/zzcjj;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/zzcil;->zza(Lcom/google/android/gms/internal/zzcjj;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p0

    const-string p3, "Failed to verify columns on table that was just created"

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcjj;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcil;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const/16 p1, 0x23

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Table "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing required column: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_4

    :goto_1
    array-length p3, p4

    if-ge v1, p3, :cond_4

    aget-object p3, p4, v1

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    add-int/lit8 p3, v1, 0x1

    aget-object p3, p4, p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p0

    const-string p1, "Table has extra columns. table, columns"

    const-string p3, ", "

    invoke-static {p3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcjj;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "SQLITE_MASTER"

    const-string v2, "name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    aput-object p2, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p0

    const-string v2, "Error querying for table"

    invoke-virtual {p0, v2, p2, p1}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzcns;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzcns;->zzjsy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/zzcns;->zzjsx:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v0

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzp([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflk;->zzcyx()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter_id"

    iget-object v3, p3, Lcom/google/android/gms/internal/zzcns;->zzjsx:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "event_name"

    iget-object p3, p3, Lcom/google/android/gms/internal/zzcns;->zzjsy:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "event_filters"

    const/4 v0, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string v0, "Error storing event filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize event filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzcnv;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzcnv;->zzjtn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/zzcnv;->zzjsx:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v0

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzp([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflk;->zzcyx()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter_id"

    iget-object v3, p3, Lcom/google/android/gms/internal/zzcnv;->zzjsx:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "property_name"

    iget-object p3, p3, Lcom/google/android/gms/internal/zzcnv;->zzjtn:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "property_filters"

    const/4 v0, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string v0, "Error storing property filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize property filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private static zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIMIT 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private final zzbae()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic zzbaf()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgw:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzbag()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgx:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzbah()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgy:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzbai()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcil;->zzjha:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzbaj()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcil;->zzjgz:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzbak()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcil;->zzjhb:[Ljava/lang/String;

    return-object v0
.end method

.method private final zzc(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    :try_start_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database returned empty set"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v2, "Database error"

    invoke-virtual {p2, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method private final zze(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayr()Lcom/google/android/gms/internal/zzcik;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/internal/zzciz;->zzjjs:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/internal/zzcik;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcja;)I

    move-result v2

    const/16 v6, 0x7d0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    return v1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_1

    return v1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const-string p2, ","

    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "audience_filter_values"

    const/16 v6, 0x8c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v0, v4, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    return v3

    :cond_4
    return v1

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final beginTransaction()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final endTransaction()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjhc:Lcom/google/android/gms/internal/zzcio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcio;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public final setTransactionSuccessful()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoe;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzp([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflk;->zzcyx()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    const-string v2, "MD5"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcno;->zzeq(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to get MD5"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcno;->zzt([B)J

    move-result-wide v1

    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "metadata_fingerprint"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "metadata"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error storing raw event metadata. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize event metadata. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public final zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcim;
    .locals 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    new-instance v5, Lcom/google/android/gms/internal/zzcim;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzcim;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v8, "apps"

    const-string v9, "day"

    const-string v10, "daily_events_count"

    const-string v11, "daily_public_events_count"

    const-string v12, "daily_conversions_count"

    const-string v13, "daily_error_events_count"

    const-string v14, "daily_realtime_events_count"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "app_id=?"

    new-array v11, v2, [Ljava/lang/String;

    aput-object p3, v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v15

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Not updating daily counts, app is not known. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v5

    :cond_1
    :try_start_2
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v4, v8, p1

    if-nez v4, :cond_2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhf:J

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhe:J

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhg:J

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhh:J

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhi:J

    :cond_2
    const-wide/16 v8, 0x1

    if-eqz p4, :cond_3

    iget-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhf:J

    add-long/2addr v12, v8

    iput-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhf:J

    :cond_3
    if-eqz p5, :cond_4

    iget-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhe:J

    add-long/2addr v12, v8

    iput-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhe:J

    :cond_4
    if-eqz p6, :cond_5

    iget-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhg:J

    add-long/2addr v12, v8

    iput-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhg:J

    :cond_5
    if-eqz p7, :cond_6

    iget-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhh:J

    add-long/2addr v12, v8

    iput-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhh:J

    :cond_6
    if-eqz p8, :cond_7

    iget-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhi:J

    add-long/2addr v12, v8

    iput-wide v12, v5, Lcom/google/android/gms/internal/zzcim;->zzjhi:J

    :cond_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "day"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_public_events_count"

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhe:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_events_count"

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhf:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_conversions_count"

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhg:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_error_events_count"

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhh:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_realtime_events_count"

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzcim;->zzjhi:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v15, v4, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v6, v7

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    :goto_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Error updating daily counts. appId"

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v5

    :goto_1
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcie;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "last_bundle_index"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundle_start_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundle_end_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzwo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_version"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayz()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dev_cert_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzaza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "measurement_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazb()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "day"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_public_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_conversions_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "config_fetched_time"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "failed_config_fetch_time"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzaze()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_version_int"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzayu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "daily_error_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_realtime_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "adid_reporting_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->zzazp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->getAppId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "apps"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error storing app. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcie;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcit;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcit;->zzcm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcit;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lifetime_count"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzcit;->zzjhs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "current_bundle_count"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzcit;->zzjht:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_fire_timestamp"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzcit;->zzjhu:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundled_timestamp"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzcit;->zzjhv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_sampled_complex_event_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcit;->zzjhw:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_sampling_rate"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcit;->zzjhx:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcit;->zzjhy:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcit;->zzjhy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "last_exempt_from_sampling"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcit;->zzcm:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error storing event aggregates. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcit;->zzcm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcnr;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "property_filters"

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_filters"

    const-string v3, "app_id=?"

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v1, p2

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v3, p2, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcnr;->zzjsv:[Lcom/google/android/gms/internal/zzcns;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcnr;->zzjsu:[Lcom/google/android/gms/internal/zzcnv;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcnr;->zzjst:Ljava/lang/Integer;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v5, "Audience with no ID. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    iget-object v5, v3, Lcom/google/android/gms/internal/zzcnr;->zzjst:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcnr;->zzjsv:[Lcom/google/android/gms/internal/zzcns;

    array-length v8, v7

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    iget-object v10, v10, Lcom/google/android/gms/internal/zzcns;->zzjsx:Ljava/lang/Integer;

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v7, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcnr;->zzjst:Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v5, v7, v8, v3}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, v3, Lcom/google/android/gms/internal/zzcnr;->zzjsu:[Lcom/google/android/gms/internal/zzcnv;

    array-length v8, v7

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    iget-object v10, v10, Lcom/google/android/gms/internal/zzcnv;->zzjsx:Ljava/lang/Integer;

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v7, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcnr;->zzjst:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, v3, Lcom/google/android/gms/internal/zzcnr;->zzjsv:[Lcom/google/android/gms/internal/zzcns;

    array-length v8, v7

    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    invoke-direct {p0, p1, v5, v10}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzcns;)Z

    move-result v10

    if-nez v10, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_5
    if-eqz v7, :cond_8

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcnr;->zzjsu:[Lcom/google/android/gms/internal/zzcnv;

    array-length v8, v3

    move v9, v6

    :goto_6
    if-ge v9, v8, :cond_8

    aget-object v10, v3, v9

    invoke-direct {p0, p1, v5, v10}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzcnv;)Z

    move-result v10

    if-nez v10, :cond_7

    move v7, v6

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v7, "property_filters"

    const-string v8, "app_id=? and audience_id=?"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    aput-object p1, v10, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v7, "event_filters"

    const-string v8, "app_id=? and audience_id=?"

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_9
    if-ge v6, v2, :cond_b

    aget-object v3, p2, v6

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcnr;->zzjst:Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzcil;->zze(Ljava/lang/String;Ljava/util/List;)Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcii;)Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcnl;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzcil;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcnn;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    return v4

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgm:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcnl;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcnl;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "active"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgp:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgq:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trigger_timeout"

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timed_out_event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgr:Lcom/google/android/gms/internal/zzcix;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcno;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "creation_timestamp"

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgo:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "triggered_event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgt:Lcom/google/android/gms/internal/zzcix;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcno;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "triggered_timestamp"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzcnl;->zzjsi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "time_to_live"

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgu:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "expired_event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->zzjgv:Lcom/google/android/gms/internal/zzcix;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcno;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error storing conditional user property"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcis;JZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcis;->zzcm:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzcob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcob;-><init>()V

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzcis;->zzjhq:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcob;->zzjuk:Ljava/lang/Long;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcis;->zzjhr:Lcom/google/android/gms/internal/zzciu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzciu;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzcoc;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcob;->zzjui:[Lcom/google/android/gms/internal/zzcoc;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcis;->zzjhr:Lcom/google/android/gms/internal/zzciu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzciu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzcoc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzcoc;-><init>()V

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcob;->zzjui:[Lcom/google/android/gms/internal/zzcoc;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    iput-object v4, v5, Lcom/google/android/gms/internal/zzcoc;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcis;->zzjhr:Lcom/google/android/gms/internal/zzciu;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzciu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzcno;->zza(Lcom/google/android/gms/internal/zzcoc;Ljava/lang/Object;)V

    move v3, v7

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v1

    new-array v1, v1, [B

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzflk;->zzp([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzflk;->zzcyx()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v3, "Saving event, name, data size"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcis;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcjh;->zzjp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcis;->zzcm:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcis;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcis;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "data"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "realtime"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "raw_events"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to insert raw event (got -1). appId"

    iget-object p4, p1, Lcom/google/android/gms/internal/zzcis;->zzcm:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string p4, "Error storing raw event. appId"

    :goto_1
    iget-object p1, p1, Lcom/google/android/gms/internal/zzcis;->zzcm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :catch_1
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string p4, "Data loss. Failed to serialize event params/data. appId"

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnn;)Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzcil;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcnn;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcno;->zzkh(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x19

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v0, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-ltz v0, :cond_1

    return v4

    :cond_0
    const-string v0, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcnn;->zzjgm:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-ltz v0, :cond_1

    return v4

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcnn;->zzjgm:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "set_timestamp"

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcnn;->zzjsi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcnn;->value:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error storing user property. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcnn;->zzcm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoe;Z)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcoe;->zzjuu:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->zzazy()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcoe;->zzjuu:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcik;->zzazs()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcoe;->zzjuu:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcik;->zzazs()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcoe;->zzjuu:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzflk;->zzp([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflk;->zzcyx()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcno;->zzr([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Saving bundle, size"

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bundle_end_timestamp"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcoe;->zzjuu:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "has_realtime"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "queue"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v1, "Failed to insert bundle (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error storing bundle. appId"

    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/zzcoe;->zzcm:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    goto :goto_0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/zzcob;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p5}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzflk;->zzp([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflk;->zzcyx()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p5

    const-string v2, "Saving complex main event, appId, data size"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzcjh;->zzjp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v2, v3, v4}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {p5, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_id"

    invoke-virtual {p5, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "children_to_process"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    invoke-virtual {p5, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "main_event_params"

    const/4 p4, 0x0

    const/4 v1, 0x5

    invoke-virtual {p2, p3, p4, p5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 p4, -0x1

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to insert complex main event (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string p4, "Error storing complex main event. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p4

    const-string p5, "Data loss. Failed to serialize event params/data. appId, eventId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcit;
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v15, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/16 v16, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const-string v3, "lifetime_count"

    const-string v4, "current_bundle_count"

    const-string v5, "last_fire_timestamp"

    const-string v6, "last_bundled_timestamp"

    const-string v7, "last_sampled_complex_event_id"

    const-string v8, "last_sampling_rate"

    const-string v9, "last_exempt_from_sampling"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? and name=?"

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object v15, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v16

    :cond_1
    :try_start_2
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v12, v1

    goto :goto_1

    :cond_2
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v17, v16

    goto :goto_2

    :cond_3
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v17, v1

    :goto_2
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v18, v16

    goto :goto_3

    :cond_4
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v18, v1

    :goto_3
    const/4 v1, 0x6

    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_6

    :try_start_3
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v19, 0x1

    cmp-long v1, v1, v19

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move v11, v10

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v15, v14

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v15, v14

    goto :goto_7

    :cond_6
    move-object/from16 v19, v16

    :goto_5
    :try_start_4
    new-instance v20, Lcom/google/android/gms/internal/zzcit;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object v3, v15

    move-wide v10, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object v15, v14

    move-object/from16 v14, v19

    :try_start_5
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/zzcit;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Got multiple records for event aggregates, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_7
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v20

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v15, v14

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v15, v14

    :goto_6
    move-object v1, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v15, v16

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v15, v16

    :goto_7
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error querying events. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcjh;->zzjp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v16

    :catchall_3
    move-exception v0

    :goto_8
    move-object v1, v0

    :goto_9
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method public final zzaf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Deleted user attribute rows"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error deleting user attribute. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/zzcjh;->zzjr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcnn;
    .locals 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v8, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "user_attributes"

    const-string v1, "set_timestamp"

    const-string v2, "value"

    const-string v3, "origin"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "app_id=? and name=?"

    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v14, v2

    const/4 v3, 0x1

    aput-object v8, v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v9

    :cond_1
    :try_start_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v11, p0

    :try_start_3
    invoke-direct {v11, v10, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v12, Lcom/google/android/gms/internal/zzcnn;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcnn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v12

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    move-object v1, v0

    move-object v10, v9

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object v1, v0

    move-object v10, v9

    :goto_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error querying user property. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/zzcjh;->zzjr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_2
    move-exception v0

    :goto_2
    move-object v1, v0

    :goto_3
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public final zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcii;
    .locals 30
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "conditional_properties"

    const-string v11, "origin"

    const-string v12, "value"

    const-string v13, "active"

    const-string v14, "trigger_event_name"

    const-string v15, "trigger_timeout"

    const-string v16, "timed_out_event"

    const-string v17, "creation_timestamp"

    const-string v18, "triggered_event"

    const-string v19, "triggered_timestamp"

    const-string v20, "time_to_live"

    const-string v21, "expired_event"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "app_id=? and name=?"

    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v13, v2

    const/4 v3, 0x1

    aput-object v7, v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v8

    :cond_1
    :try_start_2
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, p0

    :try_start_3
    invoke-direct {v10, v9, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v20, v3

    goto :goto_0

    :cond_2
    move/from16 v20, v2

    :goto_0
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcno;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/google/android/gms/internal/zzcix;

    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcno;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/google/android/gms/internal/zzcix;

    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v1, 0x9

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/zzcno;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/google/android/gms/internal/zzcix;

    new-instance v17, Lcom/google/android/gms/internal/zzcnl;

    move-object/from16 v1, v17

    move-object v2, v7

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcnl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcii;

    move-object v14, v1

    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v28}, Lcom/google/android/gms/internal/zzcii;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcnl;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;)V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Got multiple records for conditional property, expected one"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzcjh;->zzjr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v0

    move-object v9, v8

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v0

    move-object v9, v8

    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error querying conditional property"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzcjh;->zzjr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v8

    :catchall_2
    move-exception v0

    :goto_3
    move-object v1, v0

    :goto_4
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public final zzai(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error deleting conditional property"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/zzcjh;->zzjr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzai(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rowid in ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "raw_events"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Deleted fewer rows from raw events table than expected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method final zzaj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcns;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "event_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND event_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/zzflj;->zzo([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcns;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcns;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v9

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v9

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method final zzak(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcnv;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "property_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND property_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/zzflj;->zzo([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcnv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcnv;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v9

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v9

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method protected final zzal(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v1, 0x20

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "select "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from app2 where app_id=?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-wide/16 v7, -0x1

    invoke-direct {p0, v1, v5, v7, v8}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "first_open_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "previous_install_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "app2"

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v0, v5, v9, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v4, "Failed to insert column (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v7

    :cond_0
    move-wide v9, v2

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "app2"

    const-string v11, "app_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v0, v5, v1, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to update column (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v7

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    move-wide v9, v2

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Error inserting column. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method protected final zzazq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzazw()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public final zzazx()Z
    .locals 4

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzazy()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcil;->zzbae()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcju;->zzjlq:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-object v4, Lcom/google/android/gms/internal/zzciz;->zzjjl:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcja;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcju;->zzjlq:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcil;->zzbae()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzcik;->zzazs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zzazz()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/zzcob;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzflj;->zzo([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/zzcob;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcob;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final zzba(J)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p2
.end method

.method public final zzbaa()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbab()Z
    .locals 4

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbac()Z
    .locals 4

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzcil;->zzc(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbad()J
    .locals 7

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v4

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v0

    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final zzd(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcii;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "conditional_properties"

    const-string v5, "app_id"

    const-string v6, "origin"

    const-string v7, "name"

    const-string v8, "value"

    const-string v9, "active"

    const-string v10, "trigger_event_name"

    const-string v11, "trigger_timeout"

    const-string v12, "timed_out_event"

    const-string v13, "creation_timestamp"

    const-string v14, "triggered_event"

    const-string v15, "triggered_timestamp"

    const-string v16, "time_to_live"

    const-string v17, "expired_event"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "rowid"

    const-string v11, "1001"

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v5, "Read more than the max allowed conditional properties, ignoring extra"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x3

    move-object/from16 v15, p0

    invoke-direct {v15, v3, v6}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    :cond_3
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v4

    const/4 v6, 0x7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/internal/zzcno;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/internal/zzcix;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v4

    const/16 v6, 0x9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/internal/zzcno;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lcom/google/android/gms/internal/zzcix;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v4

    const/16 v6, 0xc

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v11, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v11}, Lcom/google/android/gms/internal/zzcno;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Lcom/google/android/gms/internal/zzcix;

    new-instance v24, Lcom/google/android/gms/internal/zzcnl;

    move-object/from16 v6, v24

    move-object v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/zzcnl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/zzcii;

    move-object v4, v11

    move-object v6, v12

    move-object/from16 v7, v24

    move-wide/from16 v8, v18

    move v10, v2

    move-object v2, v11

    move-object v11, v13

    move-object v12, v14

    move-wide/from16 v13, v16

    move-object/from16 v15, v20

    move-wide/from16 v16, v21

    move-object/from16 v18, v23

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzcii;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcnl;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;JLcom/google/android/gms/internal/zzcix;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    :goto_0
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Error querying conditional user property value"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :goto_2
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcnn;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v12, p1

    :try_start_1
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_id=?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_0

    move-object/from16 v6, p2

    :try_start_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, " and origin=?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_6

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, " and name glob ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "user_attributes"

    const-string v3, "name"

    const-string v7, "set_timestamp"

    const-string v8, "value"

    const-string v9, "origin"

    filled-new-array {v3, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "1001"

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0x3e8

    if-lt v5, v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v5, "Read more than the max allowed user properties, ignoring excess"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v13, p0

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x2

    move-object/from16 v13, p0

    :try_start_5
    invoke-direct {v13, v3, v5}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v11, :cond_5

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v6, "(2)Read invalid user property value, ignoring it"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v15, p3

    invoke-virtual {v5, v6, v7, v14, v15}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v6, v14

    goto :goto_7

    :cond_5
    move-object/from16 v15, p3

    new-instance v7, Lcom/google/android/gms/internal/zzcnn;

    move-object v5, v7

    move-object v6, v12

    move-object v4, v7

    move-object v7, v14

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/zzcnn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v4, :cond_7

    :goto_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1

    :cond_7
    move-object v6, v14

    const/4 v4, 0x3

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v13, p0

    :goto_4
    move-object v1, v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    move-object v1, v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v12, p1

    :goto_5
    move-object/from16 v6, p2

    :goto_6
    move-object v1, v0

    move-object v3, v2

    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v5, "(2)Error querying user properties"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v6, v1}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v2

    :catchall_2
    move-exception v0

    :goto_8
    move-object v1, v0

    move-object v2, v3

    :goto_9
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcii;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzcil;->zzd(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzji(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcnn;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const-string v4, "name"

    const-string v5, "origin"

    const-string v6, "set_timestamp"

    const-string v7, "value"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=?"

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1000"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    move-object v6, v3

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Read invalid user property value, ignoring it. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzcnn;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/zzcnn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Error querying user properties. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method public final zzjj(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcie;
    .locals 29
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "apps"

    const-string v5, "app_instance_id"

    const-string v6, "gmp_app_id"

    const-string v7, "resettable_device_id_hash"

    const-string v8, "last_bundle_index"

    const-string v9, "last_bundle_start_timestamp"

    const-string v10, "last_bundle_end_timestamp"

    const-string v11, "app_version"

    const-string v12, "app_store"

    const-string v13, "gmp_version"

    const-string v14, "dev_cert_hash"

    const-string v15, "measurement_enabled"

    const-string v16, "day"

    const-string v17, "daily_public_events_count"

    const-string v18, "daily_events_count"

    const-string v19, "daily_conversions_count"

    const-string v20, "config_fetched_time"

    const-string v21, "failed_config_fetch_time"

    const-string v22, "app_version_int"

    const-string v23, "firebase_instance_id"

    const-string v24, "daily_error_events_count"

    const-string v25, "daily_realtime_events_count"

    const-string v26, "health_monitor_sample"

    const-string v27, "android_id"

    const-string v28, "adid_reporting_enabled"

    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :cond_1
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/zzcie;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    :try_start_3
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcil;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/internal/zzcie;-><init>(Lcom/google/android/gms/internal/zzckj;Ljava/lang/String;)V

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->zziy(Ljava/lang/String;)V

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->zziz(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->zzja(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzaq(J)V

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzal(J)V

    const/4 v6, 0x5

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzam(J)V

    const/4 v6, 0x6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->setAppVersion(Ljava/lang/String;)V

    const/4 v6, 0x7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->zzjc(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzao(J)V

    const/16 v6, 0x9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzap(J)V

    const/16 v6, 0xa

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v12

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v11

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->setMeasurementEnabled(Z)V

    const/16 v6, 0xb

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzat(J)V

    const/16 v6, 0xc

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzau(J)V

    const/16 v6, 0xd

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzav(J)V

    const/16 v6, 0xe

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzaw(J)V

    const/16 v6, 0xf

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzar(J)V

    const/16 v6, 0x10

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzas(J)V

    const/16 v6, 0x11

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/32 v6, -0x80000000

    goto :goto_2

    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    :goto_2
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzan(J)V

    const/16 v6, 0x12

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->zzjb(Ljava/lang/String;)V

    const/16 v6, 0x13

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzay(J)V

    const/16 v6, 0x14

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzax(J)V

    const/16 v6, 0x15

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/zzcie;->zzjd(Ljava/lang/String;)V

    const/16 v6, 0x16

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :goto_3
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcie;->zzaz(J)V

    const/16 v6, 0x17

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v12, v11

    :cond_7
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/zzcie;->zzbq(Z)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcie;->zzays()V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v6

    const-string v7, "Got multiple records for app, expected one. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_4
    move-object v1, v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_5
    move-object v4, v3

    move-object v3, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v1, v0

    move-object v3, v2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v0

    move-object v4, v2

    :goto_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v6

    const-string v7, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v3}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v2

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1
.end method

.method public final zzjk(Ljava/lang/String;)J
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayr()Lcom/google/android/gms/internal/zzcik;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzciz;->zzjjc:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzcik;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcja;)I

    move-result v1

    const v2, 0xf4240

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "raw_events"

    const-string v4, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Error deleting over the limit events. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzjl(Ljava/lang/String;)[B
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "remote_config"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method final zzjm(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/zzcof;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "audience_filter_values"

    const-string v2, "audience_id"

    const-string v3, "current_results"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id=?"

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v8

    :cond_1
    :try_start_2
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_2
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v10, v4}, Lcom/google/android/gms/internal/zzflj;->zzo([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzcof;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcof;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v8

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v0, v8

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v8

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public final zzjn(Ljava/lang/String;)J
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(Ljava/lang/String;II)Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/zzcoe;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    if-lez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "queue"

    const-string v5, "rowid"

    const-string v6, "data"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "rowid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p3

    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :cond_4
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzcno;->zzs([B)[B

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    array-length v7, v6

    add-int/2addr v7, v3

    if-gt v7, p3, :cond_6

    :cond_5
    array-length v7, v6

    invoke-static {v6, v1, v7}, Lcom/google/android/gms/internal/zzflj;->zzo([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzcoe;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzcoe;-><init>()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    array-length v6, v6

    add-int/2addr v3, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v6, "Failed to merge queued bundle. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v6, "Failed to unzip queued bundle. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_6

    if-le v3, p3, :cond_4

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p3

    move-object v2, p2

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p2, v2

    goto :goto_5

    :catch_3
    move-exception p3

    :goto_4
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v0, "Error querying bundles. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object p1

    :goto_5
    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1
.end method
