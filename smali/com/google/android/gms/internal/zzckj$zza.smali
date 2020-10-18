.class final Lcom/google/android/gms/internal/zzckj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzckj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzaoz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcob;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic zzjpd:Lcom/google/android/gms/internal/zzckj;

.field zzjpe:Lcom/google/android/gms/internal/zzcoe;

.field zzjpf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzjpg:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpd:Lcom/google/android/gms/internal/zzckj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzckj;Lcom/google/android/gms/internal/zzckk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckj$zza;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcob;)J
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcob;->zzjuj:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/zzcob;)Z
    .locals 6

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzaoz:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzaoz:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpf:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpf:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzaoz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzaoz:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcob;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckj$zza;->zza(Lcom/google/android/gms/internal/zzcob;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/google/android/gms/internal/zzckj$zza;->zza(Lcom/google/android/gms/internal/zzcob;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpg:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzfls;->zzhs()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    sget-object v0, Lcom/google/android/gms/internal/zzciz;->zzjiv:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcja;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    return v1

    :cond_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpg:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzaoz:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpf:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzaoz:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object p2, Lcom/google/android/gms/internal/zzciz;->zzjiw:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcja;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_4

    return v1

    :cond_4
    return p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcoe;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckj$zza;->zzjpe:Lcom/google/android/gms/internal/zzcoe;

    return-void
.end method
