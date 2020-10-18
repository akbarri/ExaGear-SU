.class public final Lcom/google/android/gms/internal/zzcjf;
.super Lcom/google/android/gms/internal/zzcli;


# instance fields
.field private final zzjka:Lcom/google/android/gms/internal/zzcjg;

.field private zzjkb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcjg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzcjg;-><init>(Lcom/google/android/gms/internal/zzcjf;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjf;->zzjka:Lcom/google/android/gms/internal/zzcjg;

    return-void
.end method

.method private final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjf;->zzjka:Lcom/google/android/gms/internal/zzcjg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method private final zzb(I[B)Z
    .locals 17
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "entry"

    move-object/from16 v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v4, :cond_e

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_2

    :try_start_1
    iput-boolean v8, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return v3

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v12, v7

    :goto_1
    move-object v7, v9

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    goto/16 :goto_7

    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v10, 0x0

    const-string v12, "select count(1) from messages"

    invoke-virtual {v9, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v12, :cond_3

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v3, v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v7, v12

    goto/16 :goto_7

    :cond_3
    :goto_2
    const-wide/32 v13, 0x186a0

    cmp-long v15, v10, v13

    if-ltz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v15

    const-string v4, "Data loss, local db full"

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    const-string v4, "messages"

    const-string v10, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v11, v8, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v3

    invoke-virtual {v9, v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v4, v10, v13

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v15, v3, v8, v10}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    const-string v3, "messages"

    invoke-virtual {v9, v3, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    const/4 v2, 0x1

    return v2

    :catch_4
    move-object v7, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    move-object v12, v9

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v12, v7

    :goto_3
    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    goto :goto_9

    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v8, "Error writing entry to local database"

    invoke-virtual {v4, v8, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    :catch_6
    move-object v9, v7

    :catch_7
    :goto_5
    int-to-long v3, v6

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v9, :cond_b

    :goto_6
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v3, v0

    move-object v9, v7

    :goto_7
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v8, "Error writing entry to local database"

    invoke-virtual {v4, v8, v3}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v12, v7

    :goto_9
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    throw v2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Failed to write entry to local database"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final resetAnalyticsData()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcjf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "messages"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v2, "Reset local analytics data. records"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
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

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcix;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcix;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/high16 v0, 0x20000

    array-length v2, p1

    if-le v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/zzcjf;->zzb(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnl;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcnl;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/high16 v0, 0x20000

    array-length v2, p1

    if-le v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzcjf;->zzb(I[B)Z

    move-result p1

    return p1
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

.method public final zzc(Lcom/google/android/gms/internal/zzcii;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayl()Lcom/google/android/gms/internal/zzcno;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcno;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    const/high16 v0, 0x20000

    array-length v1, p1

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzcjf;->zzb(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzep(I)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbgl;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "google_app_measurement_local.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x5

    const/4 v5, 0x0

    move v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_13

    const/4 v8, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v15, :cond_3

    :try_start_1
    iput-boolean v8, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v9, v3

    goto/16 :goto_e

    :catch_1
    move-object v4, v15

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v9, v3

    goto/16 :goto_10

    :cond_3
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v10, "messages"

    const-string v9, "rowid"

    const-string v11, "type"

    const-string v12, "entry"

    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v17, "rowid asc"

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v9, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    :try_start_3
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-wide/16 v10, -0x1

    :cond_4
    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x2

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    if-nez v12, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    array-length v13, v14

    invoke-virtual {v12, v14, v5, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v13, Lcom/google/android/gms/internal/zzcix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcix;
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzbgn; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v13, :cond_4

    :goto_2
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v10, v0

    goto :goto_3

    :catch_3
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v13

    const-string v14, "Failed to load event from local database"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_3
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v10

    :cond_5
    if-ne v12, v8, :cond_6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    array-length v13, v14

    invoke-virtual {v12, v14, v5, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v13, Lcom/google/android/gms/internal/zzcnl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcnl;
    :try_end_9
    .catch Lcom/google/android/gms/internal/zzbgn; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v10, v0

    goto :goto_5

    :catch_4
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v13

    const-string v14, "Failed to load user property from local database"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v13, v3

    :goto_4
    if-eqz v13, :cond_4

    goto :goto_2

    :goto_5
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v10

    :cond_6
    if-ne v12, v13, :cond_7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    array-length v13, v14

    invoke-virtual {v12, v14, v5, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v13, Lcom/google/android/gms/internal/zzcii;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcii;
    :try_end_d
    .catch Lcom/google/android/gms/internal/zzbgn; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v10, v0

    goto :goto_7

    :catch_5
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v13

    const-string v14, "Failed to load user property from local database"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v13, v3

    :goto_6
    if-eqz v13, :cond_4

    goto :goto_2

    :goto_7
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v10

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v12

    const-string v13, "Unknown record type in local database"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v12, "messages"

    const-string v13, "rowid <= ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v5

    invoke-virtual {v4, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v10

    const-string v11, "Fewer entries removed from local database than expected"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    return-object v2

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v9, v3

    :goto_8
    move-object v15, v4

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v9, v3

    :goto_9
    move-object v15, v4

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v4, v15

    :goto_a
    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_14

    :catch_a
    move-exception v0

    move-object v4, v15

    move-object v9, v3

    :goto_b
    move-object v4, v0

    goto :goto_e

    :catch_b
    :goto_c
    move-object v9, v3

    goto :goto_f

    :catch_c
    move-exception v0

    move-object v4, v15

    move-object v9, v3

    :goto_d
    move-object v4, v0

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    move-object v9, v4

    goto/16 :goto_14

    :catch_d
    move-exception v0

    move-object v4, v0

    move-object v9, v3

    move-object v15, v9

    :goto_e
    if-eqz v15, :cond_c

    :try_start_11
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v10

    const-string v11, "Error reading entries from local database"

    invoke-virtual {v10, v11, v4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v8, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v15, :cond_10

    goto :goto_11

    :catch_e
    move-object v4, v3

    move-object v9, v4

    :catch_f
    :goto_f
    int-to-long v10, v7

    :try_start_12
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    add-int/lit8 v7, v7, 0x14

    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_12

    :catchall_7
    move-exception v0

    move-object v2, v0

    goto :goto_14

    :catch_10
    move-exception v0

    move-object v4, v0

    move-object v9, v3

    move-object v15, v9

    :goto_10
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v10

    const-string v11, "Error reading entries from local database"

    invoke-virtual {v10, v11, v4}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v8, v1, Lcom/google/android/gms/internal/zzcjf;->zzjkb:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v9, :cond_f

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v15, :cond_10

    :goto_11
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    :goto_12
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x5

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object v2, v0

    :goto_13
    move-object v4, v15

    :goto_14
    if-eqz v9, :cond_11

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12
    throw v2

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v4, "Failed to read events from database in reasonable time"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-object v3
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
