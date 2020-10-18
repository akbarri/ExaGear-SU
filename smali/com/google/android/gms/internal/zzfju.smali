.class final Lcom/google/android/gms/internal/zzfju;
.super Ljava/io/InputStream;


# instance fields
.field private mark:I

.field private zzpsa:Lcom/google/android/gms/internal/zzfjt;

.field private zzpsb:Lcom/google/android/gms/internal/zzfgy;

.field private zzpsc:I

.field private zzpsd:I

.field private zzpse:I

.field private synthetic zzpsf:Lcom/google/android/gms/internal/zzfjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfjq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsf:Lcom/google/android/gms/internal/zzfjq;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfju;->initialize()V

    return-void
.end method

.method private final initialize()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfjt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsf:Lcom/google/android/gms/internal/zzfjq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfjt;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsa:Lcom/google/android/gms/internal/zzfjt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsa:Lcom/google/android/gms/internal/zzfjt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfjt;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfgy;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsc:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpse:I

    return-void
.end method

.method private final zzdbj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsc:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpse:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsc:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpse:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsa:Lcom/google/android/gms/internal/zzfjt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjt;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsa:Lcom/google/android/gms/internal/zzfjt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfjt;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfgy;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsc:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    iput v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsc:I

    :cond_1
    return-void
.end method

.method private final zzk([BII)I
    .locals 4

    move v0, p2

    move p2, p3

    :goto_0
    if-lez p2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfju;->zzdbj()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    if-nez v1, :cond_0

    if-ne p2, p3, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsc:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    iget v3, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzfgs;->zza([BIII)V

    add-int/2addr v0, v1

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p2

    return p3
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpse:I

    iget v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsf:Lcom/google/android/gms/internal/zzfjq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final mark(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/zzfju;->zzpse:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/zzfju;->mark:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfju;->zzdbj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfju;->zzpsb:Lcom/google/android/gms/internal/zzfgy;

    iget v1, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzfju;->zzpsd:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfgs;->zzld(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfju;->zzk([BII)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfju;->initialize()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzfju;->mark:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzfju;->zzk([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzfju;->zzk([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
