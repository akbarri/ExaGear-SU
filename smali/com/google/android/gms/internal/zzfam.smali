.class public final Lcom/google/android/gms/internal/zzfam;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private final zzosj:I

.field private final zzosk:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzfam;->zzosj:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzfam;->zzosk:J

    return-void
.end method


# virtual methods
.method public final getResourceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfam;->zzosj:I

    return v0
.end method

.method public final zzcnk()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfam;->zzosk:J

    return-wide v0
.end method
