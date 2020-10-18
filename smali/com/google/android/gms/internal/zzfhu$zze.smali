.class final Lcom/google/android/gms/internal/zzfhu$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhu$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zze"
.end annotation


# instance fields
.field zzmci:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-void
.end method


# virtual methods
.method public final zza(ZDZD)D
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p4, 0x35

    mul-int/2addr p4, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p5

    invoke-static {p5, p6}, Lcom/google/android/gms/internal/zzfhz;->zzdf(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-wide p2
.end method

.method public final zza(ZIZI)I
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return p2
.end method

.method public final zza(ZJZJ)J
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p4, 0x35

    mul-int/2addr p4, p1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzfhz;->zzdf(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-wide p2
.end method

.method public final zza(ZLcom/google/android/gms/internal/zzfgs;ZLcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfgs;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfic;Lcom/google/android/gms/internal/zzfic;)Lcom/google/android/gms/internal/zzfic;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfid;Lcom/google/android/gms/internal/zzfid;)Lcom/google/android/gms/internal/zzfid;
    .locals 1
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

    iget p2, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p1
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

    iget p2, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfiw;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjc;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/zzfjc;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/google/android/gms/internal/zzfhu;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzfhu;

    iget v0, p2, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpps:I

    invoke-virtual {p2, v1, p0, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    iget v1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    iput v1, p2, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    :cond_0
    iget p2, p2, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x25

    :goto_0
    const/16 v0, 0x35

    iget v1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfko;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhz;->zzdo(Z)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfhz;->zzdo(Z)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return p2
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfhz;->zzdf(J)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfhz;->zzdf(J)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zzdn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    return-object p2
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/zzfjc;

    check-cast p3, Lcom/google/android/gms/internal/zzfjc;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzfhu$zze;->zza(Lcom/google/android/gms/internal/zzfjc;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;

    move-result-object p1

    return-object p1
.end method
