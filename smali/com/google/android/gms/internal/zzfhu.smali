.class public abstract Lcom/google/android/gms/internal/zzfhu;
.super Lcom/google/android/gms/internal/zzfgj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfhu$zzf;,
        Lcom/google/android/gms/internal/zzfhu$zze;,
        Lcom/google/android/gms/internal/zzfhu$zzc;,
        Lcom/google/android/gms/internal/zzfhu$zzh;,
        Lcom/google/android/gms/internal/zzfhu$zzb;,
        Lcom/google/android/gms/internal/zzfhu$zzd;,
        Lcom/google/android/gms/internal/zzfhu$zza;,
        Lcom/google/android/gms/internal/zzfhu$zzg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/zzfhu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/zzfhu$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/zzfgj<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzppj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzfhu<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzpph:Lcom/google/android/gms/internal/zzfko;

.field protected zzppi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfhu;->zzppj:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgj;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzdca()Lcom/google/android/gms/internal/zzfko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzppi:I

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfgs;)Lcom/google/android/gms/internal/zzfhu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzfhu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/zzfgs;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzfhm;->zzczf()Lcom/google/android/gms/internal/zzfhm;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhu;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_0

    move v3, v0

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    move v3, p1

    goto :goto_2

    :cond_1
    sget v3, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    if-eqz v2, :cond_4

    sget v2, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppu:I

    if-eqz v3, :cond_3

    move-object v4, p0

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    invoke-virtual {p0, v2, v4, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfkm;->zzdbz()Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p0

    throw p0

    :cond_5
    if-eqz p0, :cond_b

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_6

    move p1, v0

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    sget v3, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    move p1, v0

    :cond_8
    if-eqz v2, :cond_a

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppu:I

    if-eqz p1, :cond_9

    move-object v2, p0

    goto :goto_3

    :cond_9
    move-object v2, v1

    :goto_3
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    if-nez p1, :cond_b

    new-instance p1, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfkm;->zzdbz()Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p0

    throw p0

    :cond_b
    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfgs;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzfhu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/zzfgs;",
            "Lcom/google/android/gms/internal/zzfhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->zzcxq()Lcom/google/android/gms/internal/zzfhb;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfhb;->zzlf(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method static zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzfhu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/zzfhb;",
            "Lcom/google/android/gms/internal/zzfhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppx:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfhu;

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppv:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/zzfie;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfie;

    throw p0

    :cond_0
    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzfhu;[B)Lcom/google/android/gms/internal/zzfhu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzfhu<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzfhm;->zzczf()Lcom/google/android/gms/internal/zzfhm;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzfhu;->zza(Lcom/google/android/gms/internal/zzfhu;[BLcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz p1, :cond_4

    sget p1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppu:I

    if-eqz v2, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfkm;->zzdbz()Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p0

    throw p0

    :cond_5
    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfhu;[BLcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzfhu<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/zzfhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhb;->zzbb([B)Lcom/google/android/gms/internal/zzfhb;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfhb;->zzlf(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final zza(Lcom/google/android/gms/internal/zzfhu;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzfhu<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget p1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    return v2

    :cond_1
    sget p1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    move v1, v2

    return v1
.end method

.method protected static zzczr()Lcom/google/android/gms/internal/zzfic;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfhy;->zzdad()Lcom/google/android/gms/internal/zzfhy;

    move-result-object v0

    return-object v0
.end method

.method protected static zzczs()Lcom/google/android/gms/internal/zzfid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzfid<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzfjo;->zzdbg()Lcom/google/android/gms/internal/zzfjo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppz:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfhu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzfhu$zzc;->zzppn:Lcom/google/android/gms/internal/zzfhu$zzc;

    check-cast p1, Lcom/google/android/gms/internal/zzfhu;

    sget v3, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpps:I

    invoke-virtual {p0, v3, v1, p1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-interface {v1, v3, p1}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfhv; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzfhu$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfhu$zze;-><init>()V

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpps:I

    invoke-virtual {p0, v1, v0, p0}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    iget v0, v0, Lcom/google/android/gms/internal/zzfhu$zze;->zzmci:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpno:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_1

    return v4

    :cond_1
    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v5, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppu:I

    if-eqz v3, :cond_3

    move-object v1, p0

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzfjf;->zza(Lcom/google/android/gms/internal/zzfjc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public zza(Lcom/google/android/gms/internal/zzfhg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzfjn;->zzdbf()Lcom/google/android/gms/internal/zzfjn;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjn;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfjv;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhi;->zzb(Lcom/google/android/gms/internal/zzfhg;)Lcom/google/android/gms/internal/zzfhi;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzfjv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzfli;)V

    return-void
.end method

.method protected final zza(ILcom/google/android/gms/internal/zzfhb;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzdca()Lcom/google/android/gms/internal/zzfko;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzdcb()Lcom/google/android/gms/internal/zzfko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfko;->zzb(ILcom/google/android/gms/internal/zzfhb;)Z

    move-result p1

    return p1
.end method

.method public final zzczq()Lcom/google/android/gms/internal/zzfjl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzfjl<",
            "TMessageType;>;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpqa:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjl;

    return-object v0
.end method

.method public final synthetic zzczt()Lcom/google/android/gms/internal/zzfjd;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppy:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfhu$zza;->zza(Lcom/google/android/gms/internal/zzfhu;)Lcom/google/android/gms/internal/zzfhu$zza;

    return-object v0
.end method

.method public final synthetic zzczu()Lcom/google/android/gms/internal/zzfjc;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppz:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu;

    return-object v0
.end method

.method public zzhs()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzppi:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfjn;->zzdbf()Lcom/google/android/gms/internal/zzfjn;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjn;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfjv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzfjv;->zzct(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzppi:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzppi:I

    return v0
.end method
