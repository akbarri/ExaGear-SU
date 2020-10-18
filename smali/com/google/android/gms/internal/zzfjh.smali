.class final Lcom/google/android/gms/internal/zzfjh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfjv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzfjv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzprg:Lcom/google/android/gms/internal/zzfjc;

.field private final zzprh:Lcom/google/android/gms/internal/zzfkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzpri:Z

.field private final zzprj:Lcom/google/android/gms/internal/zzfhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfhn<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfjc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;",
            "Lcom/google/android/gms/internal/zzfhn<",
            "*>;",
            "Lcom/google/android/gms/internal/zzfjc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfjh;->zzprh:Lcom/google/android/gms/internal/zzfkn;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzfhn;->zzh(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfjh;->zzpri:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfjh;->zzprj:Lcom/google/android/gms/internal/zzfhn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfjh;->zzprg:Lcom/google/android/gms/internal/zzfjc;

    return-void
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;",
            "Lcom/google/android/gms/internal/zzfhn<",
            "*>;",
            "Lcom/google/android/gms/internal/zzfjc;",
            ")",
            "Lcom/google/android/gms/internal/zzfjh<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfjh;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfjh;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfkn;Lcom/google/android/gms/internal/zzfhn;Lcom/google/android/gms/internal/zzfjc;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzfli;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/zzfli;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjh;->zzprj:Lcom/google/android/gms/internal/zzfhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfhn;->zzcr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzfhq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfhq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfhs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfhs;->zzczm()Lcom/google/android/gms/internal/zzfld;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzfld;->zzpvb:Lcom/google/android/gms/internal/zzfld;

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfhs;->zzczn()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfhs;->zzczo()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    instance-of v3, v1, Lcom/google/android/gms/internal/zzfii;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfhs;->zzhu()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/zzfii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfii;->zzdao()Lcom/google/android/gms/internal/zzfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfik;->toByteString()Lcom/google/android/gms/internal/zzfgs;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/zzfli;->zzb(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfhs;->zzhu()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjh;->zzprh:Lcom/google/android/gms/internal/zzfkn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfkn;->zzcu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfkn;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzfli;)V

    return-void
.end method

.method public final zzct(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjh;->zzprh:Lcom/google/android/gms/internal/zzfkn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfkn;->zzcu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfkn;->zzcv(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfjh;->zzpri:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjh;->zzprj:Lcom/google/android/gms/internal/zzfhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfhn;->zzcr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzfhq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhq;->zzczk()I

    move-result p1

    add-int/2addr v1, p1

    :cond_0
    return v1
.end method
