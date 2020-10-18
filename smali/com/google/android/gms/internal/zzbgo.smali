.class public final Lcom/google/android/gms/internal/zzbgo;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/os/Parcel;IB)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ID)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IF)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IJ)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x8

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x8

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IS)V
    .locals 1

    const/4 p1, 0x3

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;IZ)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[BZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[FZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[IZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[JZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    const/4 p4, 0x0

    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, p4

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    if-nez v2, :cond_1

    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v2, p3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[ZZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zza(Landroid/os/Parcel;I[[BZ)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    array-length p3, p2

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zzag(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static zzah(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static zzai(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static zzb(Landroid/os/Parcel;II)V
    .locals 1

    const v0, 0xffff

    if-lt p2, v0, :cond_0

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zzb(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zzc(Landroid/os/Parcel;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zzc(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzb(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zzd(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zze(Landroid/os/Parcel;)I
    .locals 1

    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method
