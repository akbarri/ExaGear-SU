.class final Lcom/google/android/gms/internal/zzfjk;
.super Ljava/lang/Object;


# static fields
.field private static final zzprk:Lcom/google/android/gms/internal/zzfji;

.field private static final zzprl:Lcom/google/android/gms/internal/zzfji;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfjk;->zzdbe()Lcom/google/android/gms/internal/zzfji;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfjk;->zzprk:Lcom/google/android/gms/internal/zzfji;

    new-instance v0, Lcom/google/android/gms/internal/zzfjj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfjj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfjk;->zzprl:Lcom/google/android/gms/internal/zzfji;

    return-void
.end method

.method static zzdbc()Lcom/google/android/gms/internal/zzfji;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfjk;->zzprk:Lcom/google/android/gms/internal/zzfji;

    return-object v0
.end method

.method static zzdbd()Lcom/google/android/gms/internal/zzfji;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfjk;->zzprl:Lcom/google/android/gms/internal/zzfji;

    return-object v0
.end method

.method private static zzdbe()Lcom/google/android/gms/internal/zzfji;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfji;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
