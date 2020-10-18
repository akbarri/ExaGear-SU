.class final Lcom/google/android/gms/internal/zzfjs;
.super Ljava/lang/Object;


# instance fields
.field private final zzprx:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/zzfgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfjr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjs;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfjs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p0

    return-object p0
.end method

.method private final zzbb(Lcom/google/android/gms/internal/zzfgs;)V
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxs()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfjs;->zzmp(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzfjq;->zzdbh()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzfjq;->zzdbh()[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfgs;

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfgs;

    new-instance v4, Lcom/google/android/gms/internal/zzfjq;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    move-object v1, v4

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzfjq;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfjs;->zzmp(I)I

    move-result p1

    invoke-static {}, Lcom/google/android/gms/internal/zzfjq;->zzdbh()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgs;

    new-instance v1, Lcom/google/android/gms/internal/zzfjq;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/zzfjq;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzfjq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfjq;->zza(Lcom/google/android/gms/internal/zzfjq;)Lcom/google/android/gms/internal/zzfgs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfjs;->zzbb(Lcom/google/android/gms/internal/zzfgs;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfjq;->zzb(Lcom/google/android/gms/internal/zzfjq;)Lcom/google/android/gms/internal/zzfgs;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x31

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfgs;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfjs;->zzbb(Lcom/google/android/gms/internal/zzfgs;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzfjs;->zzbb(Lcom/google/android/gms/internal/zzfgs;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgs;

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfjs;->zzprx:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzfgs;

    new-instance v0, Lcom/google/android/gms/internal/zzfjq;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/gms/internal/zzfjq;-><init>(Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfjr;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static zzmp(I)I
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfjq;->zzdbh()[I

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method
