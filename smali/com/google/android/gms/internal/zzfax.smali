.class public final Lcom/google/android/gms/internal/zzfax;
.super Lcom/google/android/gms/internal/zzflm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm<",
        "Lcom/google/android/gms/internal/zzfax;",
        ">;"
    }
.end annotation


# instance fields
.field public zzotf:Lcom/google/android/gms/internal/zzfat;

.field public zzotg:Lcom/google/android/gms/internal/zzfat;

.field public zzoth:Lcom/google/android/gms/internal/zzfat;

.field public zzoti:Lcom/google/android/gms/internal/zzfav;

.field public zzotj:[Lcom/google/android/gms/internal/zzfay;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    invoke-static {}, Lcom/google/android/gms/internal/zzfay;->zzcns()[Lcom/google/android/gms/internal/zzfay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfax;->zzpnr:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfax;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzfax;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfav;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzflo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_d
    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    mul-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfat;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfat;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfat;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfav;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzflo;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v1, v2

    return v1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzfay;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzfay;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzfay;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzfay;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzfay;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzfav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfav;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzfat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfat;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzfat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfat;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/zzfat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfat;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-void
.end method

.method protected final zzq()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotf:Lcom/google/android/gms/internal/zzfat;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfax;->zzotg:Lcom/google/android/gms/internal/zzfat;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfax;->zzoth:Lcom/google/android/gms/internal/zzfat;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfax;->zzoti:Lcom/google/android/gms/internal/zzfav;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfax;->zzotj:[Lcom/google/android/gms/internal/zzfay;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method
