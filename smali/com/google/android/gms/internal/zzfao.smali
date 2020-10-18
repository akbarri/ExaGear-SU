.class public final Lcom/google/android/gms/internal/zzfao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzose:Lcom/google/android/gms/internal/zzfas;

.field private zzosm:Lcom/google/android/gms/internal/zzfap;

.field private zzosn:Lcom/google/android/gms/internal/zzfap;

.field private zzoso:Lcom/google/android/gms/internal/zzfap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfap;Lcom/google/android/gms/internal/zzfas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfao;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfao;->zzosm:Lcom/google/android/gms/internal/zzfap;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfao;->zzosn:Lcom/google/android/gms/internal/zzfap;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfao;->zzoso:Lcom/google/android/gms/internal/zzfap;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfap;)Lcom/google/android/gms/internal/zzfat;
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzfat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfat;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfap;->zzcnl()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfap;->zzcnl()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/internal/zzfau;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzfau;-><init>()V

    iput-object v8, v9, Lcom/google/android/gms/internal/zzfau;->key:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, v9, Lcom/google/android/gms/internal/zzfau;->zzosz:[B

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/zzfaw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzfaw;-><init>()V

    iput-object v4, v6, Lcom/google/android/gms/internal/zzfaw;->zzkal:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzfau;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzfau;

    iput-object v4, v6, Lcom/google/android/gms/internal/zzfaw;->zzote:[Lcom/google/android/gms/internal/zzfau;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfaw;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zzfaw;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfat;->zzosw:[Lcom/google/android/gms/internal/zzfaw;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfap;->zzaol()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfap;->zzaol()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfat;->zzosx:[[B

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfap;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfat;->timestamp:J

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzfax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfax;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzosm:Lcom/google/android/gms/internal/zzfap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzosm:Lcom/google/android/gms/internal/zzfap;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfao;->zza(Lcom/google/android/gms/internal/zzfap;)Lcom/google/android/gms/internal/zzfat;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzosn:Lcom/google/android/gms/internal/zzfap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzosn:Lcom/google/android/gms/internal/zzfap;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfao;->zza(Lcom/google/android/gms/internal/zzfap;)Lcom/google/android/gms/internal/zzfat;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzoso:Lcom/google/android/gms/internal/zzfap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzoso:Lcom/google/android/gms/internal/zzfap;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfao;->zza(Lcom/google/android/gms/internal/zzfap;)Lcom/google/android/gms/internal/zzfat;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzfav;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfav;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->getLastFetchStatus()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/zzfav;->zzota:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->isDeveloperModeEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzfav;->zzotb:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->zzcnp()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzfav;->zzotc:J

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfas;->zzcnn()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfao;->zzose:Lcom/google/android/gms/internal/zzfas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfas;->zzcnn()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v5, Lcom/google/android/gms/internal/zzfay;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfay;-><init>()V

    iput-object v4, v5, Lcom/google/android/gms/internal/zzfay;->zzkal:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzfam;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzfam;->zzcnk()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/android/gms/internal/zzfay;->zzotl:J

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzfam;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfam;->getResourceId()I

    move-result v4

    iput v4, v5, Lcom/google/android/gms/internal/zzfay;->resourceId:I

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzfay;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zzfay;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzfls;->zzc(Lcom/google/android/gms/internal/zzfls;)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfao;->mContext:Landroid/content/Context;

    const-string v2, "persisted_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncPersisterTask"

    const-string v2, "Could not persist config."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
