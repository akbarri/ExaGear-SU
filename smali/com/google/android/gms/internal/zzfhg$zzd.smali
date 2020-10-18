.class final Lcom/google/android/gms/internal/zzfhg$zzd;
.super Lcom/google/android/gms/internal/zzfhg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzfhg$zza;-><init>(I)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private final doFlush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    return-void
.end method

.method private final zzmi(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhg$zzd;->doFlush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhg$zzd;->doFlush()V

    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    iput v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhg$zzd;->doFlush()V

    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg$zza;->zzak(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzfhg$zza;->zzdd(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/zzfgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzfhg;->zzay(Lcom/google/android/gms/internal/zzfgs;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/zzfjc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzfhg;->zze(Lcom/google/android/gms/internal/zzfjc;)V

    return-void
.end method

.method public final zzac(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    return-void
.end method

.method public final zzad(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg$zza;->zzak(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmg(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhg$zza;->zzdd(J)V

    return-void
.end method

.method public final zzae(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg$zza;->zzak(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmg(I)V

    return-void
.end method

.method public final zzaf(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg$zza;->zzak(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmh(I)V

    return-void
.end method

.method public final zzay(Lcom/google/android/gms/internal/zzfgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfgs;->zza(Lcom/google/android/gms/internal/zzfgr;)V

    return-void
.end method

.method public final zzb(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhg$zzd;->doFlush()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhg$zza;->zzc(B)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg$zza;->zzak(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzfhg$zza;->zzde(J)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/zzfgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzfhg;->zzae(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzfhg;->zza(ILcom/google/android/gms/internal/zzfgs;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/zzfjc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzfhg;->zzae(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzfhg;->zza(ILcom/google/android/gms/internal/zzfjc;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    return-void
.end method

.method public final zzcu(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhg$zza;->zzdd(J)V

    return-void
.end method

.method public final zzcw(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhg$zza;->zzde(J)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzfjc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfjc;->zzhs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzfjc;->zza(Lcom/google/android/gms/internal/zzfhg;)V

    return-void
.end method

.method public final zze([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfhg;->write([BII)V

    return-void
.end method

.method public final zzj([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfhg;->write([BII)V

    return-void
.end method

.method public final zzl(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg$zza;->zzak(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhg$zza;->zzc(B)V

    return-void
.end method

.method public final zzls(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzcu(J)V

    return-void
.end method

.method public final zzlt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmg(I)V

    return-void
.end method

.method public final zzlv(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzmi(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmh(I)V

    return-void
.end method

.method public final zzp(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzfhg;->zztw(Ljava/lang/String;)V

    return-void
.end method

.method public final zztw(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzly(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzfks;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/zzfgr;->zze([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhg$zzd;->doFlush()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfhg$zzd;->zzly(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfkv; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    iget v4, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->limit:I

    iget v5, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/zzfks;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmg(I)V

    iput v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzfks;->zzd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzfhg$zza;->zzmg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzfks;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfkv; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/zzfhg$zzc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfhg$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->zzpor:I

    iput v2, p0, Lcom/google/android/gms/internal/zzfhg$zzd;->position:I

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzfkv; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfkv;)V

    return-void
.end method
