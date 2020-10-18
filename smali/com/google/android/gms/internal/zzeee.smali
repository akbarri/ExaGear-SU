.class public final Lcom/google/android/gms/internal/zzeee;
.super Lcom/google/android/gms/internal/zzedq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzedq<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private zzmyh:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private zzmyx:Lcom/google/android/gms/internal/zzedz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzedz;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzedz;Ljava/util/Comparator;Lcom/google/android/gms/internal/zzeef;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeee;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/util/Comparator;)V

    return-void
.end method

.method public static zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeee;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/android/gms/internal/zzeee<",
            "TA;TB;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzedr;->zzbvs()Lcom/google/android/gms/internal/zzedt;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzeeg;->zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeee;

    move-result-object p0

    return-object p0
.end method

.method private final zzbs(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/android/gms/internal/zzedz<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeee;->zzbs(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeee;->zzbs(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzedz;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzedz;->size()I

    move-result p1

    add-int/2addr v1, p1

    return v1

    :cond_0
    if-gez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzedz;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/zzedu;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->size()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeeb<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzedz;->zza(Lcom/google/android/gms/internal/zzeeb;)V

    return-void
.end method

.method public final zzbj(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/android/gms/internal/zzedq<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzedq;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzedz;->zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedz;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/google/android/gms/internal/zzeea;->zzmyt:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzedz;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzeee;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzeee;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final zzbk(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzedu;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public final zzbl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzedz;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzedz;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzedz;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    if-gez v3, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvy()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbvz()Lcom/google/android/gms/internal/zzedz;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x32

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t find predecessor key of non-present key: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbvp()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbwa()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvq()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->zzbwb()Lcom/google/android/gms/internal/zzedz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzedz;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvr()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/zzedu;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/gms/internal/zzedq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyx:Lcom/google/android/gms/internal/zzedz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzedz;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedz;

    move-result-object v2

    sget v5, Lcom/google/android/gms/internal/zzeea;->zzmyt:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzedz;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzeee;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeee;->zzmyh:Ljava/util/Comparator;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/zzeee;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/util/Comparator;)V

    return-object p2
.end method
