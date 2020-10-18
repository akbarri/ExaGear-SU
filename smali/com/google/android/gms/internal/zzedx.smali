.class public final Lcom/google/android/gms/internal/zzedx;
.super Lcom/google/android/gms/internal/zzeed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzeed<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzeed;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzedx;->size:I

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzedx;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeed;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeed;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzedz;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzedx;->size:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzedx;->size:I

    return v0
.end method

.method protected final zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)Lcom/google/android/gms/internal/zzeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzeed<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeed;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeed;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeed;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeed;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object p4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzedx;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzedx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzedz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzedx;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set left after using size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzeed;->zza(Lcom/google/android/gms/internal/zzedz;)V

    return-void
.end method

.method protected final zzbvv()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/zzeea;->zzmyt:I

    return v0
.end method

.method public final zzbvw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
