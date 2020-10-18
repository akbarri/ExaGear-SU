.class public Lcom/google/android/gms/internal/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm;


# static fields
.field private static DEBUG:Z


# instance fields
.field private zzbo:Lcom/google/android/gms/internal/zzar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzbp:Lcom/google/android/gms/internal/zzai;

.field private zzbq:Lcom/google/android/gms/internal/zzak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzaf;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzaj;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzai;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzak;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzak;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzai;Lcom/google/android/gms/internal/zzak;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzai;Lcom/google/android/gms/internal/zzak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaj;->zzbp:Lcom/google/android/gms/internal/zzai;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaj;->zzbo:Lcom/google/android/gms/internal/zzar;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaj;->zzbq:Lcom/google/android/gms/internal/zzak;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzar;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzak;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzak;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzar;Lcom/google/android/gms/internal/zzak;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzar;Lcom/google/android/gms/internal/zzak;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaj;->zzbo:Lcom/google/android/gms/internal/zzar;

    new-instance v0, Lcom/google/android/gms/internal/zzah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzah;-><init>(Lcom/google/android/gms/internal/zzar;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzbp:Lcom/google/android/gms/internal/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaj;->zzbq:Lcom/google/android/gms/internal/zzak;

    return-void
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/internal/zzc;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzl;",
            ">;",
            "Lcom/google/android/gms/internal/zzc;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lcom/google/android/gms/internal/zzc;->zzg:Ljava/util/List;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/google/android/gms/internal/zzc;->zzg:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/zzc;->zzg:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/zzl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzae;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;",
            "Lcom/google/android/gms/internal/zzae;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzae;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->zzi()Lcom/google/android/gms/internal/zzab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->zzh()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzab;->zza(Lcom/google/android/gms/internal/zzae;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzae; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "%s-retry [timeout=%s]"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    throw p2
.end method

.method private final zza(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzac;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzau;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj;->zzbq:Lcom/google/android/gms/internal/zzak;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzau;-><init>(Lcom/google/android/gms/internal/zzak;I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzac;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzac;-><init>()V

    throw v2

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj;->zzbq:Lcom/google/android/gms/internal/zzak;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzak;->zzb(I)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v2, p2, v1}, Lcom/google/android/gms/internal/zzau;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error occurred when closing InputStream"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaj;->zzbq:Lcom/google/android/gms/internal/zzak;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzak;->zza([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->close()V

    return-object v1

    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "Error occurred when closing InputStream"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaj;->zzbq:Lcom/google/android/gms/internal/zzak;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzak;->zza([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzau;->close()V

    throw v2
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzp;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzae;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzr;->zze()Lcom/google/android/gms/internal/zzc;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    goto :goto_1

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v10, Lcom/google/android/gms/internal/zzc;->zza:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string v12, "If-None-Match"

    iget-object v13, v10, Lcom/google/android/gms/internal/zzc;->zza:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v12, v10, Lcom/google/android/gms/internal/zzc;->zzc:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    const-string v12, "If-Modified-Since"

    iget-wide v13, v10, Lcom/google/android/gms/internal/zzc;->zzc:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/zzap;->zzb(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v10, v11

    :goto_1
    iget-object v11, v1, Lcom/google/android/gms/internal/zzaj;->zzbp:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v11, v2, v10}, Lcom/google/android/gms/internal/zzai;->zza(Lcom/google/android/gms/internal/zzr;Ljava/util/Map;)Lcom/google/android/gms/internal/zzaq;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzaq;->getStatusCode()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzaq;->zzp()Ljava/util/List;

    move-result-object v11
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v5, 0x130

    if-ne v12, v5, :cond_4

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzr;->zze()Lcom/google/android/gms/internal/zzc;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/zzp;

    const/16 v14, 0x130

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v17, v12, v3

    move-object v13, v5

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/zzp;-><init>(I[BZJLjava/util/List;)V

    return-object v5

    :cond_3
    invoke-static {v11, v5}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzc;)Ljava/util/List;

    move-result-object v25

    new-instance v12, Lcom/google/android/gms/internal/zzp;

    const/16 v20, 0x130

    iget-object v5, v5, Lcom/google/android/gms/internal/zzc;->data:[B

    const/16 v22, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v23, v13, v3

    move-object/from16 v19, v12

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v25}, Lcom/google/android/gms/internal/zzp;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v12

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v13, v8

    move-object/from16 v17, v11

    goto/16 :goto_7

    :cond_4
    :try_start_3
    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzaq;->getContent()Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v5, :cond_5

    :try_start_4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzaq;->getContentLength()I

    move-result v13

    invoke-direct {v1, v5, v13}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/io/InputStream;I)[B

    move-result-object v5
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_5
    :try_start_5
    new-array v5, v9, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v3

    sget-boolean v8, Lcom/google/android/gms/internal/zzaj;->DEBUG:Z

    if-nez v8, :cond_6

    const-wide/16 v15, 0xbb8

    cmp-long v8, v13, v15

    if-lez v8, :cond_8

    :cond_6
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v2, v15, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v15, v7
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v5, :cond_7

    :try_start_7
    array-length v13, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v13, v5

    move-object/from16 v17, v11

    goto/16 :goto_6

    :cond_7
    :try_start_8
    const-string v13, "null"

    :goto_3
    aput-object v13, v15, v6

    const/4 v13, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v13

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzr;->zzi()Lcom/google/android/gms/internal/zzab;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/internal/zzab;->zzc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v13

    invoke-static {v8, v15}, Lcom/google/android/gms/internal/zzaf;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/16 v8, 0xc8

    if-lt v12, v8, :cond_a

    const/16 v8, 0x12b

    if-le v12, v8, :cond_9

    goto :goto_4

    :cond_9
    new-instance v8, Lcom/google/android/gms/internal/zzp;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    sub-long/2addr v15, v3

    move-object/from16 v18, v11

    move-object v11, v8

    move-object v13, v5

    move-object/from16 v17, v18

    :try_start_9
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/zzp;-><init>(I[BZJLjava/util/List;)V

    return-object v8

    :cond_a
    :goto_4
    move-object/from16 v18, v11

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v18, v11

    :goto_5
    move-object v13, v5

    move-object/from16 v17, v18

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v18, v11

    move-object v5, v0

    move-object v13, v8

    move-object/from16 v17, v18

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    move-object v13, v8

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    move-object v10, v8

    move-object v13, v10

    :goto_6
    move-object v5, v0

    :goto_7
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzaq;->getStatusCode()I

    move-result v5

    const-string v8, "Unexpected response code %d for %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/zzaf;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_f

    new-instance v6, Lcom/google/android/gms/internal/zzp;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v15, v7, v3

    move-object v11, v6

    move v12, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/zzp;-><init>(I[BZJLjava/util/List;)V

    const/16 v7, 0x191

    if-eq v5, v7, :cond_e

    const/16 v7, 0x193

    if-ne v5, v7, :cond_b

    goto :goto_8

    :cond_b
    const/16 v2, 0x190

    if-lt v5, v2, :cond_c

    const/16 v2, 0x1f3

    if-gt v5, v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/zzg;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzg;-><init>(Lcom/google/android/gms/internal/zzp;)V

    throw v2

    :cond_c
    const/16 v2, 0x1f4

    if-lt v5, v2, :cond_d

    const/16 v2, 0x257

    if-gt v5, v2, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/zzac;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzac;-><init>(Lcom/google/android/gms/internal/zzp;)V

    throw v2

    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/zzac;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzac;-><init>(Lcom/google/android/gms/internal/zzp;)V

    throw v2

    :cond_e
    :goto_8
    const-string v5, "auth"

    new-instance v7, Lcom/google/android/gms/internal/zza;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/zza;-><init>(Lcom/google/android/gms/internal/zzp;)V

    invoke-static {v5, v2, v7}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzae;)V

    goto/16 :goto_0

    :cond_f
    const-string v5, "network"

    new-instance v6, Lcom/google/android/gms/internal/zzo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzo;-><init>()V

    goto :goto_a

    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/zzq;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    move-object v3, v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzr;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_8
    const-string v5, "socket"

    new-instance v6, Lcom/google/android/gms/internal/zzad;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzad;-><init>()V

    :goto_a
    invoke-static {v5, v2, v6}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzae;)V

    goto/16 :goto_0
.end method
