.class final Lcom/google/android/gms/internal/zzfiz;
.super Ljava/lang/Object;


# static fields
.field private static final zzpre:Lcom/google/android/gms/internal/zzfix;

.field private static final zzprf:Lcom/google/android/gms/internal/zzfix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfiz;->zzday()Lcom/google/android/gms/internal/zzfix;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfiz;->zzpre:Lcom/google/android/gms/internal/zzfix;

    new-instance v0, Lcom/google/android/gms/internal/zzfiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfiy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfiz;->zzprf:Lcom/google/android/gms/internal/zzfix;

    return-void
.end method

.method static zzdaw()Lcom/google/android/gms/internal/zzfix;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfiz;->zzpre:Lcom/google/android/gms/internal/zzfix;

    return-object v0
.end method

.method static zzdax()Lcom/google/android/gms/internal/zzfix;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfiz;->zzprf:Lcom/google/android/gms/internal/zzfix;

    return-object v0
.end method

.method private static zzday()Lcom/google/android/gms/internal/zzfix;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
