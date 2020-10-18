.class final Lcom/google/android/gms/internal/zzfiq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfjw;


# static fields
.field private static final zzpqx:Lcom/google/android/gms/internal/zzfjb;


# instance fields
.field private final zzpqw:Lcom/google/android/gms/internal/zzfjb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfir;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfiq;->zzpqx:Lcom/google/android/gms/internal/zzfjb;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzfis;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfjb;

    invoke-static {}, Lcom/google/android/gms/internal/zzfht;->zzczp()Lcom/google/android/gms/internal/zzfht;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfiq;->zzdas()Lcom/google/android/gms/internal/zzfjb;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfis;-><init>([Lcom/google/android/gms/internal/zzfjb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfiq;-><init>(Lcom/google/android/gms/internal/zzfjb;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzfjb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfhz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfjb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfiq;->zzpqw:Lcom/google/android/gms/internal/zzfjb;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfja;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzfja;->zzdaz()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpqc:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzdas()Lcom/google/android/gms/internal/zzfjb;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/zzfiq;->zzpqx:Lcom/google/android/gms/internal/zzfjb;

    return-object v0
.end method


# virtual methods
.method public final zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfjv;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzfjv<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfjx;->zzm(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfiq;->zzpqw:Lcom/google/android/gms/internal/zzfjb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfjb;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfja;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfja;->zzdba()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzfhu;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbm()Lcom/google/android/gms/internal/zzfkn;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhp;->zzczh()Lcom/google/android/gms/internal/zzfhn;

    move-result-object v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfja;->zzdbb()Lcom/google/android/gms/internal/zzfjc;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfjh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjh;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbk()Lcom/google/android/gms/internal/zzfkn;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzfhp;->zzczi()Lcom/google/android/gms/internal/zzfhn;

    move-result-object v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfja;->zzdbb()Lcom/google/android/gms/internal/zzfjc;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfjh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjh;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/zzfhu;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfiq;->zza(Lcom/google/android/gms/internal/zzfja;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzfjk;->zzdbd()Lcom/google/android/gms/internal/zzfji;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfim;->zzdar()Lcom/google/android/gms/internal/zzfim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbm()Lcom/google/android/gms/internal/zzfkn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzfhp;->zzczh()Lcom/google/android/gms/internal/zzfhn;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzfiz;->zzdax()Lcom/google/android/gms/internal/zzfix;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzfjg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfja;Lcom/google/android/gms/internal/zzfji;Lcom/google/android/gms/internal/zzfim;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfix;)Lcom/google/android/gms/internal/zzfjg;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzfjk;->zzdbd()Lcom/google/android/gms/internal/zzfji;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfim;->zzdar()Lcom/google/android/gms/internal/zzfim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbm()Lcom/google/android/gms/internal/zzfkn;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzfiz;->zzdax()Lcom/google/android/gms/internal/zzfix;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzfjg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfja;Lcom/google/android/gms/internal/zzfji;Lcom/google/android/gms/internal/zzfim;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfix;)Lcom/google/android/gms/internal/zzfjg;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzfiq;->zza(Lcom/google/android/gms/internal/zzfja;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzfjk;->zzdbc()Lcom/google/android/gms/internal/zzfji;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfim;->zzdaq()Lcom/google/android/gms/internal/zzfim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbk()Lcom/google/android/gms/internal/zzfkn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzfhp;->zzczi()Lcom/google/android/gms/internal/zzfhn;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzfiz;->zzdaw()Lcom/google/android/gms/internal/zzfix;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzfjg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfja;Lcom/google/android/gms/internal/zzfji;Lcom/google/android/gms/internal/zzfim;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfix;)Lcom/google/android/gms/internal/zzfjg;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/zzfjk;->zzdbc()Lcom/google/android/gms/internal/zzfji;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzfim;->zzdaq()Lcom/google/android/gms/internal/zzfim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbl()Lcom/google/android/gms/internal/zzfkn;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzfiz;->zzdaw()Lcom/google/android/gms/internal/zzfix;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzfjg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfja;Lcom/google/android/gms/internal/zzfji;Lcom/google/android/gms/internal/zzfim;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfix;)Lcom/google/android/gms/internal/zzfjg;

    move-result-object p1

    return-object p1
.end method
