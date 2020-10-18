.class public final Lcom/google/android/gms/internal/zzbin;
.super Ljava/lang/Object;


# instance fields
.field private zzglv:J

.field private zzglw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzglx:I

.field private zzglz:I

.field private zzgma:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbin;->zzglv:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbin;->zzglz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbin;->zzgma:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbin;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbin;->zzglv:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbin;->zzglw:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbin;->zzglx:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbin;->zzglz:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbin;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbin;->zzgma:I

    return p0
.end method


# virtual methods
.method public final zzaa(J)Lcom/google/android/gms/internal/zzbin;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbin;->zzglv:J

    return-object p0
.end method

.method public final zzaok()Lcom/google/android/gms/internal/zzbim;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbim;-><init>(Lcom/google/android/gms/internal/zzbin;Lcom/google/android/gms/internal/zzbil;)V

    return-object v0
.end method

.method public final zzcj(I)Lcom/google/android/gms/internal/zzbin;
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/16 p1, 0x283c

    iput p1, p0, Lcom/google/android/gms/internal/zzbin;->zzglx:I

    return-object p0
.end method

.method public final zzck(I)Lcom/google/android/gms/internal/zzbin;
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/zzbin;->zzglz:I

    return-object p0
.end method

.method public final zzcl(I)Lcom/google/android/gms/internal/zzbin;
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/zzbin;->zzgma:I

    return-object p0
.end method

.method public final zzx(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbin;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbin;->zzglw:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbin;->zzglw:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbin;->zzglw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
