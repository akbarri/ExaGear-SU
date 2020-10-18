.class public final Lcom/google/android/gms/internal/zzfhu$zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhu$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzf"
.end annotation


# static fields
.field public static final zzppq:Lcom/google/android/gms/internal/zzfhu$zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfhu$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfhu$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfhu$zzf;->zzppq:Lcom/google/android/gms/internal/zzfhu$zzf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    return-wide p5

    :cond_0
    return-wide p2
.end method

.method public final zza(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final zza(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    return-wide p5

    :cond_0
    return-wide p2
.end method

.method public final zza(ZLcom/google/android/gms/internal/zzfgs;ZLcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfic;Lcom/google/android/gms/internal/zzfic;)Lcom/google/android/gms/internal/zzfic;
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfic;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzfic;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfic;->zzcxk()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzfic;->zzmk(I)Lcom/google/android/gms/internal/zzfic;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzfic;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfid;Lcom/google/android/gms/internal/zzfid;)Lcom/google/android/gms/internal/zzfid;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfid<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfid<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzfid<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfid;->zzcxk()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzfid;->zzmo(I)Lcom/google/android/gms/internal/zzfid;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzfid;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfiw;Lcom/google/android/gms/internal/zzfiw;)Lcom/google/android/gms/internal/zzfiw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfiw<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzfiw<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzfiw<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfiw;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfiw;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfiw;->zzdau()Lcom/google/android/gms/internal/zzfiw;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfiw;->zza(Lcom/google/android/gms/internal/zzfiw;)V

    :cond_1
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjc;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/zzfjc;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfjc;->zzczt()Lcom/google/android/gms/internal/zzfjd;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzfjd;->zzd(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfjd;->zzczz()Lcom/google/android/gms/internal/zzfjc;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzdca()Lcom/google/android/gms/internal/zzfko;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzfko;->zzb(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzdn(Z)V
    .locals 0

    return-void
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/zzfjc;

    check-cast p3, Lcom/google/android/gms/internal/zzfjc;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzfhu$zzf;->zza(Lcom/google/android/gms/internal/zzfjc;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method
