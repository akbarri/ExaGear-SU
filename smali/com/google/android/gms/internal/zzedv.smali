.class public final Lcom/google/android/gms/internal/zzedv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzmyp:Lcom/google/android/gms/internal/zzedq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzedq<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzedq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedq<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzedr;->zzbvs()Lcom/google/android/gms/internal/zzedt;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzedr;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedq;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzedv;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzedv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedq;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedq;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzedw;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->size()I

    move-result v0

    return v0
.end method

.method public final zzbk(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzedq;->zzbk(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzedw;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzedv<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedq;->zzbj(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzedv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzedv;-><init>(Lcom/google/android/gms/internal/zzedq;)V

    return-object v0
.end method

.method public final zzbq(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzedv<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzedq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzedv;-><init>(Lcom/google/android/gms/internal/zzedq;)V

    return-object v0
.end method

.method public final zzbr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedq;->zzbl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzbvr()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedq;->zzbvr()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzedw;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbvt()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->zzbvp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvu()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmyp:Lcom/google/android/gms/internal/zzedq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedq;->zzbvq()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
