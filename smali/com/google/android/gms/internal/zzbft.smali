.class public final Lcom/google/android/gms/internal/zzbft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/ClearcutLogger$zza;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final zzfqj:Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

.field private static zzfqk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/phenotype/PhenotypeFlag<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static zzfql:Ljava/lang/Boolean;

.field private static zzfqm:Ljava/lang/Long;


# instance fields
.field private final zzaiq:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbft;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    const-string v1, "com.google.android.gms.clearcut.public"

    invoke-static {v1}, Lcom/google/android/gms/phenotype/Phenotype;->getContentProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;-><init>(Landroid/net/Uri;)V

    const-string v1, "gms:playlog:service:sampling_"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;->withGservicePrefix(Ljava/lang/String;)Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    move-result-object v0

    const-string v1, "LogSampling__"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;->withPhenotypePrefix(Ljava/lang/String;)Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbft;->zzfqj:Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbft;->zzaiq:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zzbft;->zzfqk:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/zzbft;->zzfqk:Ljava/util/Map;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbft;->zzaiq:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbft;->zzaiq:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/phenotype/PhenotypeFlag;->maybeInit(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static zzcc(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbft;->zzfql:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbih;->zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object p0

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbig;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzbft;->zzfql:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzbft;->zzfql:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfu;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    :cond_1
    move-object v5, v1

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "LogSamplerImpl"

    const-string v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long p0, v6, v1

    if-ltz p0, :cond_5

    cmp-long p0, v8, v1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/zzbfu;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzbfu;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "LogSamplerImpl"

    const/16 v1, 0x48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "negative values not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LogSamplerImpl"

    const-string v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final zzg(Ljava/lang/String;I)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_2

    return p2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbft;->zzaiq:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbft;->zzaiq:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbft;->zzcc(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/zzbft;->zzfqk:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/phenotype/PhenotypeFlag;

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/zzbft;->zzfqj:Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;->createFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/phenotype/PhenotypeFlag;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzbft;->zzfqk:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbft;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfu;

    move-result-object p1

    if-nez p1, :cond_6

    return p2

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbfu;->zzfqn:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbft;->zzaiq:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/zzbft;->zzfqm:Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbft;->zzcc(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdnm;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    sput-object v1, Lcom/google/android/gms/internal/zzbft;->zzfqm:Ljava/lang/Long;

    goto :goto_3

    :cond_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-wide v1, v3

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v1, Lcom/google/android/gms/internal/zzbft;->zzfqm:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_4
    const/16 v5, 0x8

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/zzbft;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v6, v0

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_6

    :cond_b
    :goto_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbfo;->zzi([B)J

    move-result-wide v0

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbfu;->zzfqo:J

    iget-wide v7, p1, Lcom/google/android/gms/internal/zzbfu;->zzfqp:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_f

    cmp-long p1, v7, v3

    if-gez p1, :cond_c

    goto :goto_8

    :cond_c
    if-lez p1, :cond_e

    cmp-long p1, v0, v3

    if-ltz p1, :cond_d

    rem-long/2addr v0, v7

    goto :goto_7

    :cond_d
    const-wide v2, 0x7fffffffffffffffL

    rem-long v9, v2, v7

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    and-long/2addr v0, v2

    rem-long/2addr v0, v7

    add-long/2addr v9, v0

    rem-long v0, v9, v7

    :goto_7
    cmp-long p1, v0, v5

    if-gez p1, :cond_e

    return p2

    :cond_e
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "negative values not supported: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
