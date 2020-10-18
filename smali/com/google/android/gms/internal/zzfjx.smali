.class final Lcom/google/android/gms/internal/zzfjx;
.super Ljava/lang/Object;


# static fields
.field private static final zzpsg:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzpsh:Lcom/google/android/gms/internal/zzfkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzpsi:Lcom/google/android/gms/internal/zzfkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzpsj:Lcom/google/android/gms/internal/zzfkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbn()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsg:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfjx;->zzdp(Z)Lcom/google/android/gms/internal/zzfkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsh:Lcom/google/android/gms/internal/zzfkn;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfjx;->zzdp(Z)Lcom/google/android/gms/internal/zzfkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsi:Lcom/google/android/gms/internal/zzfkn;

    new-instance v0, Lcom/google/android/gms/internal/zzfkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfkp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsj:Lcom/google/android/gms/internal/zzfkn;

    return-void
.end method

.method public static zzdbk()Lcom/google/android/gms/internal/zzfkn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsh:Lcom/google/android/gms/internal/zzfkn;

    return-object v0
.end method

.method public static zzdbl()Lcom/google/android/gms/internal/zzfkn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsi:Lcom/google/android/gms/internal/zzfkn;

    return-object v0
.end method

.method public static zzdbm()Lcom/google/android/gms/internal/zzfkn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsj:Lcom/google/android/gms/internal/zzfkn;

    return-object v0
.end method

.method private static zzdbn()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzdbo()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzdp(Z)Lcom/google/android/gms/internal/zzfkn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzfkn<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzfjx;->zzdbo()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfkn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static zzm(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzfhu;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsg:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzfjx;->zzpsg:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method
