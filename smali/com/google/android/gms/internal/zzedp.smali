.class final Lcom/google/android/gms/internal/zzedp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private zzmyi:I

.field private synthetic zzmyj:I

.field private synthetic zzmyk:Z

.field private synthetic zzmyl:Lcom/google/android/gms/internal/zzedo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedo;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedp;->zzmyl:Lcom/google/android/gms/internal/zzedo;

    iput p2, p0, Lcom/google/android/gms/internal/zzedp;->zzmyj:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzedp;->zzmyk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p0, Lcom/google/android/gms/internal/zzedp;->zzmyj:I

    iput p1, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzedp;->zzmyk:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    if-ltz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedp;->zzmyl:Lcom/google/android/gms/internal/zzedo;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzedo;->zza(Lcom/google/android/gms/internal/zzedo;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedp;->zzmyl:Lcom/google/android/gms/internal/zzedo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedo;->zza(Lcom/google/android/gms/internal/zzedo;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedp;->zzmyl:Lcom/google/android/gms/internal/zzedo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedo;->zzb(Lcom/google/android/gms/internal/zzedo;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    aget-object v1, v1, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzedp;->zzmyk:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    add-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/zzedp;->zzmyi:I

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
