.class final Lcom/google/android/gms/internal/zzfjq;
.super Lcom/google/android/gms/internal/zzfgs;


# static fields
.field private static final zzprr:[I


# instance fields
.field private final zzprs:I

.field private final zzprt:Lcom/google/android/gms/internal/zzfgs;

.field private final zzpru:Lcom/google/android/gms/internal/zzfgs;

.field private final zzprv:I

.field private final zzprw:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/google/android/gms/internal/zzfjq;->zzprr:[I

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/zzfjq;->zzprr:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/zzfjq;->zzprr:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprw:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzfjq;->zzb(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/zzfjq;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/zzfjq;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    iget-object p0, v2, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzfjq;->zzb(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/zzfjq;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V

    return-object p1

    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result v3

    if-le v1, v3, :cond_4

    new-instance p0, Lcom/google/android/gms/internal/zzfjq;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V

    new-instance p1, Lcom/google/android/gms/internal/zzfjq;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxr()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/zzfjq;->zzprr:[I

    aget v1, v2, v1

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzfjq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzfjs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfjs;-><init>(Lcom/google/android/gms/internal/zzfjr;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfjq;)Lcom/google/android/gms/internal/zzfgs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/zzfgs;->zza([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzfgs;->zza([BIII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfgs;->zzba([B)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzfjq;)Lcom/google/android/gms/internal/zzfgs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    return-object p0
.end method

.method static synthetic zzdbh()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfjq;->zzprr:[I

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzfgs;

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->zzcxt()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxt()I

    move-result v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/zzfjt;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/zzfjt;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzfgy;

    new-instance v5, Lcom/google/android/gms/internal/zzfjt;

    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/zzfjt;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgy;

    move-object v3, p1

    move p1, v2

    move v6, p1

    move v7, v6

    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v8

    sub-int/2addr v8, p1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez p1, :cond_5

    invoke-virtual {v4, v3, v6, v10}, Lcom/google/android/gms/internal/zzfgy;->zza(Lcom/google/android/gms/internal/zzfgs;II)Z

    move-result v11

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v4, p1, v10}, Lcom/google/android/gms/internal/zzfgy;->zza(Lcom/google/android/gms/internal/zzfgs;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    iget v11, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    if-lt v7, v11, :cond_8

    iget p1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    if-ne v7, p1, :cond_7

    return v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgy;

    move-object v4, p1

    move p1, v2

    goto :goto_2

    :cond_9
    add-int/2addr p1, v10

    :goto_2
    if-ne v10, v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfgy;

    move v6, v2

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzfgr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfgs;->zza(Lcom/google/android/gms/internal/zzfgr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfgs;->zza(Lcom/google/android/gms/internal/zzfgr;)V

    return-void
.end method

.method public final zzaa(II)Lcom/google/android/gms/internal/zzfgs;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzfjq;->zzh(III)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzfgs;->zzpnw:Lcom/google/android/gms/internal/zzfgs;

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p1

    return-object p1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzfjq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)V

    return-object v0
.end method

.method protected final zzb([BIII)V
    .locals 2

    add-int v0, p2, p4

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfgs;->zzb([BIII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfgs;->zzb([BIII)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzfgs;->zzb([BIII)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    const/4 v1, 0x0

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/google/android/gms/internal/zzfgs;->zzb([BIII)V

    return-void
.end method

.method public final zzcxq()Lcom/google/android/gms/internal/zzfhb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfju;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfju;-><init>(Lcom/google/android/gms/internal/zzfjq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfhb;->zzh(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzfhb;

    move-result-object v0

    return-object v0
.end method

.method protected final zzcxr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprw:I

    return v0
.end method

.method protected final zzcxs()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    sget-object v1, Lcom/google/android/gms/internal/zzfjq;->zzprr:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzfjq;->zzprw:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzg(III)I
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfgs;->zzg(III)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfgs;->zzg(III)I

    move-result p1

    return p1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzfgs;->zzg(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/android/gms/internal/zzfgs;->zzg(III)I

    move-result p1

    return p1
.end method

.method public final zzld(I)B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprs:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfjq;->zzab(II)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzprt:Lcom/google/android/gms/internal/zzfgs;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfgs;->zzld(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjq;->zzpru:Lcom/google/android/gms/internal/zzfgs;

    iget v1, p0, Lcom/google/android/gms/internal/zzfjq;->zzprv:I

    sub-int/2addr p1, v1

    goto :goto_0
.end method
