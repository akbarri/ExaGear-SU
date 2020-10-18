.class public final Lcom/google/android/gms/internal/zzedr;
.super Ljava/lang/Object;


# static fields
.field private static final zzmym:Lcom/google/android/gms/internal/zzedt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeds;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeds;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzedr;->zzmym:Lcom/google/android/gms/internal/zzedt;

    return-void
.end method

.method public static zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/zzedq<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzedo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzedo;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedq;
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
            "Lcom/google/android/gms/internal/zzedq<",
            "TA;TB;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/google/android/gms/internal/zzedr;->zzmym:Lcom/google/android/gms/internal/zzedt;

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzedo;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzeee;->zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeee;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedq;
    .locals 2
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
            "Lcom/google/android/gms/internal/zzedq<",
            "TA;TC;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzedo;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeeg;->zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzedt;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeee;

    move-result-object p0

    return-object p0
.end method

.method public static zzbvs()Lcom/google/android/gms/internal/zzedt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzedt<",
            "TA;TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzedr;->zzmym:Lcom/google/android/gms/internal/zzedt;

    return-object v0
.end method
