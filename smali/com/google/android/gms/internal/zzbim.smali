.class public final Lcom/google/android/gms/internal/zzbim;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private final zzglv:J

.field private final zzglw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzglx:I

.field private final zzgly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbip;",
            ">;"
        }
    .end annotation
.end field

.field private final zzglz:I

.field private final zzgma:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbin;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbin;->zza(Lcom/google/android/gms/internal/zzbin;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglv:J

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbin;->zzb(Lcom/google/android/gms/internal/zzbin;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglw:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbin;->zzc(Lcom/google/android/gms/internal/zzbin;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglx:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbim;->zzgly:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbin;->zzd(Lcom/google/android/gms/internal/zzbin;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglz:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbin;->zze(Lcom/google/android/gms/internal/zzbin;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbim;->zzgma:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbin;Lcom/google/android/gms/internal/zzbil;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbim;-><init>(Lcom/google/android/gms/internal/zzbin;)V

    return-void
.end method


# virtual methods
.method public final zzaof()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglv:J

    return-wide v0
.end method

.method public final zzaog()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglw:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglw:Ljava/util/Map;

    return-object v0
.end method

.method public final zzaoh()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglx:I

    return v0
.end method

.method public final zzaoi()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbim;->zzgma:I

    return v0
.end method

.method public final zzaoj()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbim;->zzglz:I

    return v0
.end method
