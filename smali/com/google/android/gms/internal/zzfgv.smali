.class final Lcom/google/android/gms/internal/zzfgv;
.super Lcom/google/android/gms/internal/zzfgz;


# instance fields
.field private final zzpnz:I

.field private final zzpoa:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfgz;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/zzfgv;->zzh(III)I

    iput p2, p0, Lcom/google/android/gms/internal/zzfgv;->zzpnz:I

    iput p3, p0, Lcom/google/android/gms/internal/zzfgv;->zzpoa:I

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfgv;->zzpoa:I

    return v0
.end method

.method protected final zzb([BIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgv;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zzcxu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfgv;->zzpnz:I

    return v0
.end method

.method public final zzld(I)B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfgv;->zzab(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgv;->zzjwl:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzfgv;->zzpnz:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method
