.class public final Lcom/google/android/gms/internal/zzfan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzgmi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final zzosl:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "[B>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfan;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfan;->zzgmi:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzfan;->zzosl:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfan;->mContext:Landroid/content/Context;

    const-string v1, "frc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfan;->zzgmi:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/zzdyw;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzdyw;-><init>()V

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzfan;->zzosl:J

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzdyx;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/google/android/gms/internal/zzdyw;J)V

    return-void
.end method
