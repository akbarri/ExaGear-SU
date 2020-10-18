.class Lcom/google/android/gms/internal/zzfgz;
.super Lcom/google/android/gms/internal/zzfgy;


# instance fields
.field protected final zzjwl:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/zzfgz;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzfgz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->zzcxt()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxt()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/zzfgy;->zza(Lcom/google/android/gms/internal/zzfgs;II)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    array-length v0, v0

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzfgr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfgr;->zze([BII)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/zzfgs;II)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result p1

    const/16 v1, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfgz;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/zzfgz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v3, :cond_3

    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfgs;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzaa(II)Lcom/google/android/gms/internal/zzfgs;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzfgz;->zzh(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzfgs;->zzpnw:Lcom/google/android/gms/internal/zzfgs;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzfgv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/zzfgv;-><init>([BII)V

    return-object v0
.end method

.method protected zzb([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzcxq()Lcom/google/android/gms/internal/zzfhb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzfhb;->zzb([BIIZ)Lcom/google/android/gms/internal/zzfhb;

    move-result-object v0

    return-object v0
.end method

.method protected zzcxu()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzg(III)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/zzfhz;->zza(I[BII)I

    move-result p1

    return p1
.end method

.method public zzld(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    aget-byte p1, v0, p1

    return p1
.end method
