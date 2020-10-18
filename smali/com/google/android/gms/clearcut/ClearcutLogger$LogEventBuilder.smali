.class public Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/ClearcutLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEventBuilder"
.end annotation


# instance fields
.field private zzfpd:Ljava/lang/String;

.field private zzfpe:I

.field private zzfpf:Ljava/lang/String;

.field private zzfpg:Ljava/lang/String;

.field private zzfpi:I

.field private final zzfpm:Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;

.field private zzfpn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzfpo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfpp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzfpq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/phenotype/ExperimentTokens;",
            ">;"
        }
    .end annotation
.end field

.field private zzfpr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private zzfps:Z

.field private final zzfpt:Lcom/google/android/gms/internal/zzfmr;

.field private zzfpu:Z

.field private synthetic zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$zzb;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$zzb;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {p3}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zza(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpe:I

    iget-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {p3}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzb(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpd:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpg:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpi:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpn:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpo:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpp:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpq:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpr:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfps:Z

    new-instance v1, Lcom/google/android/gms/internal/zzfmr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfmr;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpu:Z

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfmr;->zzpyu:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfmr;->zzpyv:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzd(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

    iget-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzfmr;->zzpyu:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfmr;->zzpzg:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzfmr;->zzpzb:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpm:Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/zza;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V

    return-void
.end method


# virtual methods
.method public log()V
    .locals 14
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpu:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpu:Z

    new-instance v0, Lcom/google/android/gms/clearcut/zze;

    new-instance v10, Lcom/google/android/gms/internal/zzbfv;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzf(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzg(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpe:I

    iget-object v5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpf:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zze(Lcom/google/android/gms/clearcut/ClearcutLogger;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzbfv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpt:Lcom/google/android/gms/internal/zzfmr;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v12}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-boolean v13, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfps:Z

    move-object v1, v0

    move-object v2, v10

    move-object v10, v11

    move v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/clearcut/zze;-><init>(Lcom/google/android/gms/internal/zzbfv;Lcom/google/android/gms/internal/zzfmr;Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/phenotype/ExperimentTokens;Z)V

    iget-object v1, v0, Lcom/google/android/gms/clearcut/zze;->zzfpz:Lcom/google/android/gms/internal/zzbfv;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzh(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLogger$zza;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbfv;->zzfpd:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/zzbfv;->zzfpe:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$zza;->zzg(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzfpv:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzi(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/zzb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/zze;)Lcom/google/android/gms/common/api/PendingResult;

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, v12}, Lcom/google/android/gms/common/api/PendingResults;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method
