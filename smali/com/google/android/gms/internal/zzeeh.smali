.class final Lcom/google/android/gms/internal/zzeeh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/zzeej;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I

.field private value:J


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeeh;->length:I

    iget v0, p0, Lcom/google/android/gms/internal/zzeeh;->length:I

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeeh;->value:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeh;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzeeh;->length:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeeh;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeh;->value:J

    return-wide v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzeej;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeei;-><init>(Lcom/google/android/gms/internal/zzeeh;)V

    return-object v0
.end method
