.class final Lcom/google/android/gms/internal/zzeeg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TB;TC;>;"
        }
    .end annotation
.end field

.field private final zzmyy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final zzmyz:Lcom/google/android/gms/internal/zzedt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzedt<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private zzmza:Lcom/google/android/gms/internal/zzeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeed<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field private zzmzb:Lcom/google/android/gms/internal/zzeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeed<",
            "TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/android/gms/internal/zzedt<",
            "TA;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmyy:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeeg;->values:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeeg;->zzmyz:Lcom/google/android/gms/internal/zzedt;

    return-void
.end method

.method private final zzbt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeg;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmyz:Lcom/google/android/gms/internal/zzedt;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzedt;->zzbo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeee;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/android/gms/internal/zzedt<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/android/gms/internal/zzeee<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeeg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzeeg;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;)V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lcom/google/android/gms/internal/zzeeh;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzeeh;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeeh;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzeej;

    iget v1, p2, Lcom/google/android/gms/internal/zzeej;->zzmzf:I

    sub-int/2addr p0, v1

    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzeej;->zzmze:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/gms/internal/zzeea;->zzmyt:I

    :goto_1
    iget p2, p2, Lcom/google/android/gms/internal/zzeej;->zzmzf:I

    invoke-direct {v0, v1, p2, p0}, Lcom/google/android/gms/internal/zzeeg;->zzf(III)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/gms/internal/zzeea;->zzmyt:I

    iget v2, p2, Lcom/google/android/gms/internal/zzeej;->zzmzf:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/zzeeg;->zzf(III)V

    iget v1, p2, Lcom/google/android/gms/internal/zzeej;->zzmzf:I

    sub-int/2addr p0, v1

    sget v1, Lcom/google/android/gms/internal/zzeea;->zzmys:I

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/zzeee;

    iget-object p1, v0, Lcom/google/android/gms/internal/zzeeg;->zzmza:Lcom/google/android/gms/internal/zzeed;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzedy;->zzbvx()Lcom/google/android/gms/internal/zzedy;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/zzeeg;->zzmza:Lcom/google/android/gms/internal/zzeed;

    :goto_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/gms/internal/zzeee;-><init>(Lcom/google/android/gms/internal/zzedz;Ljava/util/Comparator;Lcom/google/android/gms/internal/zzeef;)V

    return-object p0
.end method

.method private final zzf(III)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzeeg;->zzx(II)Lcom/google/android/gms/internal/zzedz;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeg;->zzmyy:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    sget v0, Lcom/google/android/gms/internal/zzeea;->zzmys:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzeec;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzeeg;->zzbt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lcom/google/android/gms/internal/zzeec;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzedx;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzeeg;->zzbt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p3, v0, v1, p2}, Lcom/google/android/gms/internal/zzedx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzeeg;->zzmza:Lcom/google/android/gms/internal/zzeed;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmza:Lcom/google/android/gms/internal/zzeed;

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmzb:Lcom/google/android/gms/internal/zzeed;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzeeg;->zzmzb:Lcom/google/android/gms/internal/zzeed;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzeed;->zza(Lcom/google/android/gms/internal/zzedz;)V

    goto :goto_1
.end method

.method private final zzx(II)Lcom/google/android/gms/internal/zzedz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/zzedz<",
            "TA;TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzedy;->zzbvx()Lcom/google/android/gms/internal/zzedy;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeeg;->zzmyy:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzedx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeeg;->zzbt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, v1}, Lcom/google/android/gms/internal/zzedx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V

    return-object p2

    :cond_1
    div-int/lit8 p2, p2, 0x2

    add-int v0, p1, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeeg;->zzx(II)Lcom/google/android/gms/internal/zzedz;

    move-result-object p1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/zzeeg;->zzx(II)Lcom/google/android/gms/internal/zzedz;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeeg;->zzmyy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzedx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeeg;->zzbt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzedx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzedz;Lcom/google/android/gms/internal/zzedz;)V

    return-object v1
.end method
