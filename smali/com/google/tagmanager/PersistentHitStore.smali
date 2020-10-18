.class Lcom/google/tagmanager/PersistentHitStore;
.super Ljava/lang/Object;
.source "PersistentHitStore.java"

# interfaces
.implements Lcom/google/tagmanager/HitStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;,
        Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;
    }
.end annotation


# static fields
.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "gtm_urls.db"

.field static final HITS_TABLE:Ljava/lang/String; = "gtm_hits"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_DISPATCH_RETRY_WINDOW:J = 0xdbba00L

.field static final HIT_FIRST_DISPATCH_TIME:Ljava/lang/String; = "hit_first_send_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_ID:Ljava/lang/String; = "hit_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static final HIT_ID_WHERE_CLAUSE:Ljava/lang/String; = "hit_id=?"

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_URL:Ljava/lang/String; = "hit_url"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

.field private volatile mDispatcher:Lcom/google/tagmanager/Dispatcher;

.field private mLastDeleteStaleHitsTime:J

.field private final mListener:Lcom/google/tagmanager/HitStoreStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "gtm_hits"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "hit_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "hit_time"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "hit_url"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "hit_first_send_time"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V
    .locals 1

    const-string v0, "gtm_urls.db"

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/PersistentHitStore;-><init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 107
    new-instance p1, Lcom/google/tagmanager/PersistentHitStore$1;

    invoke-direct {p1, p0}, Lcom/google/tagmanager/PersistentHitStore$1;-><init>(Lcom/google/tagmanager/PersistentHitStore;)V

    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    .line 113
    new-instance p1, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    iget-object p2, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;-><init>(Lcom/google/tagmanager/PersistentHitStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    .line 114
    new-instance p1, Lcom/google/tagmanager/SimpleNetworkDispatcher;

    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;-><init>(Lcom/google/tagmanager/PersistentHitStore;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/google/tagmanager/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;)V

    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    const-wide/16 p1, 0x0

    .line 118
    iput-wide p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/PersistentHitStore;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/PersistentHitStore;JJ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/PersistentHitStore;->setHitFirstDispatchTime(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private deleteHit(J)V
    .locals 1

    const/4 v0, 0x1

    .line 380
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->deleteHits([Ljava/lang/String;)V

    return-void
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 533
    :catch_0
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private removeOldHitIfFull()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->peekHitIds(I)Ljava/util/List;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store full, deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hits to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 157
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->deleteHits([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setHitFirstDispatchTime(JJ)V
    .locals 5

    const-string v0, "Error opening database for getNumStoredHits."

    .line 384
    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_first_send_time"

    .line 389
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string p3, "gtm_hits"

    const-string p4, "hit_id=?"

    const/4 v2, 0x1

    .line 391
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p3, v1, p4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    :goto_0
    return-void
.end method

.method private writeHitToDatabase(JLjava/lang/String;)V
    .locals 3

    const-string v0, "Error opening database for putHit"

    .line 162
    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_time"

    .line 170
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "hit_url"

    .line 171
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hit_first_send_time"

    const/4 p2, 0x0

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string p1, "gtm_hits"

    const/4 p3, 0x0

    .line 174
    invoke-virtual {v0, p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 177
    iget-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-interface {p1, p2}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Error storing hit"

    .line 179
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 509
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v0}, Lcom/google/tagmanager/Dispatcher;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Error opening database for close"

    .line 511
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method deleteHits([Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 362
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "Error opening database for deleteHits."

    .line 365
    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "HIT_ID in (%s)"

    const/4 v2, 0x1

    .line 369
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ","

    const/4 v5, 0x0

    array-length v6, p1

    const-string v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v3, "gtm_hits"

    .line 372
    invoke-virtual {v0, v3, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-interface {p1, v2}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error deleting hits"

    .line 375
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method deleteStaleHits()I
    .locals 8

    .line 339
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    iget-wide v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    .line 345
    :cond_0
    iput-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    const-string v0, "Error opening database for deleteStaleHits."

    .line 346
    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v1}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v1, v4

    const-string v4, "gtm_hits"

    const-string v5, "HIT_TIME < ?"

    const/4 v6, 0x1

    .line 351
    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v2

    if-nez v2, :cond_2

    move v3, v6

    :cond_2
    invoke-interface {v1, v3}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    return v0
.end method

.method public dispatch()V
    .locals 2

    const-string v0, "GTM Dispatch running..."

    .line 452
    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v0}, Lcom/google/tagmanager/Dispatcher;->okToDispatch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x28

    .line 458
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "...nothing to dispatch"

    .line 460
    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Dispatcher;->dispatchHits(Ljava/util/List;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredUntriedHits()I

    move-result v0

    if-lez v0, :cond_2

    .line 469
    invoke-static {}, Lcom/google/tagmanager/ServiceManagerImpl;->getInstance()Lcom/google/tagmanager/ServiceManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    :cond_2
    return-void
.end method

.method public getDbHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/tagmanager/Dispatcher;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    return-object v0
.end method

.method getHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .locals 4

    const-string v0, "Error opening database for getNumStoredHits."

    .line 404
    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT COUNT(*) from gtm_hits"

    .line 410
    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v1, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string v0, "Error getting numStoredHits"

    .line 415
    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 418
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method getNumStoredUntriedHits()I
    .locals 10

    const-string v0, "Error opening database for getNumStoredHits."

    .line 426
    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    const-string v2, "gtm_hits"

    const-string v3, "hit_id"

    const-string v4, "hit_first_send_time"

    .line 432
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "hit_first_send_time=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 444
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catch_0
    move-object v9, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string v1, "Error getting num untried hits"

    .line 441
    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_2

    .line 444
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v0

    :goto_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method peekHitIds(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    const-string p1, "Invalid maxHits specified. Skipping"

    .line 193
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "Error opening database for peekHitIds."

    .line 196
    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "gtm_hits"

    const-string v4, "hit_id"

    .line 203
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "hit_id"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    :cond_2
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v13, v1

    move-object v1, p1

    move-object p1, v13

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 217
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public peekHits(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/Hit;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Error opening database for peekHits"

    move-object/from16 v3, p0

    .line 235
    invoke-direct {v3, v2}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    const-string v5, "gtm_hits"

    const-string v4, "hit_id"

    const-string v6, "hit_time"

    const-string v7, "hit_first_send_time"

    .line 248
    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "%s ASC"

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Object;

    const-string v12, "hit_id"

    const/4 v15, 0x0

    aput-object v12, v11, v15

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 257
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 258
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_2

    .line 260
    :cond_1
    :try_start_3
    new-instance v1, Lcom/google/tagmanager/Hit;

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/google/tagmanager/Hit;-><init>(JJJ)V

    .line 261
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_0
    if-eqz v12, :cond_3

    .line 269
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    :try_start_4
    const-string v5, "gtm_hits"

    const-string v1, "hit_id"

    const-string v4, "hit_url"

    .line 275
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "%s ASC"

    new-array v4, v14, [Ljava/lang/Object;

    const-string v11, "hit_id"

    aput-object v11, v4, v15

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v2

    move-object v2, v12

    move-object v12, v1

    :try_start_5
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v15

    .line 286
    :cond_4
    move-object v2, v12

    check-cast v2, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-lez v2, :cond_5

    .line 291
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/Hit;

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/tagmanager/Hit;->setHitUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "HitString for hitId %d too large.  Hit will be deleted."

    .line 293
    new-array v4, v14, [Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/Hit;

    invoke-virtual {v5}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 297
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v2, :cond_4

    :cond_6
    if-eqz v12, :cond_7

    .line 324
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v13

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v12, v2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v12, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v12

    :goto_2
    move-object v1, v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v2, v12

    :goto_3
    move-object v1, v0

    .line 301
    :goto_4
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hit url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/Hit;

    .line 312
    invoke-virtual {v4}, Lcom/google/tagmanager/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v15, :cond_8

    goto :goto_6

    :cond_8
    move v15, v14

    .line 319
    :cond_9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v12, :cond_b

    .line 324
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_2

    :goto_7
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v1

    :catch_4
    move-exception v0

    move-object v2, v12

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v12

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v2, v12

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v12, v13

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v12, v13

    :goto_8
    move-object v13, v1

    :goto_9
    move-object v1, v0

    .line 265
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hitIds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v12, :cond_d

    .line 269
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object v13

    :catchall_5
    move-exception v0

    :goto_a
    move-object v1, v0

    :goto_b
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1
.end method

.method public putHit(JLjava/lang/String;)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->deleteStaleHits()I

    .line 144
    invoke-direct {p0}, Lcom/google/tagmanager/PersistentHitStore;->removeOldHitIfFull()V

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/PersistentHitStore;->writeHitToDatabase(JLjava/lang/String;)V

    return-void
.end method

.method public setClock(Lcom/google/tagmanager/Clock;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-void
.end method

.method setDispatcher(Lcom/google/tagmanager/Dispatcher;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 331
    iput-wide p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    return-void
.end method
