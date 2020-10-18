.class public final Lcom/google/android/gms/common/api/internal/zzdk;
.super Ljava/lang/Object;


# static fields
.field public static final zzgbq:Lcom/google/android/gms/common/api/Status;

.field private static final zzgbr:[Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzfyj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field final zzgbs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzgbt:Lcom/google/android/gms/common/api/internal/zzdn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The connection to Google Play services was lost"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbq:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbr:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbs:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzdl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzdl;-><init>(Lcom/google/android/gms/common/api/internal/zzdk;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbt:Lcom/google/android/gms/common/api/internal/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzfyj:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbs:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbr:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/internal/zzdn;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->zzaid()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzaip()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbs:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzfyj:Ljava/util/Map;

    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/common/api/internal/zzm;

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zzm;->zzahm()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$zze;->zzaho()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/google/android/gms/common/api/internal/zzdm;

    invoke-direct {v7, v4, v5, v6, v5}, Lcom/google/android/gms/common/api/internal/zzdm;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/zze;Landroid/os/IBinder;Lcom/google/android/gms/common/api/internal/zzdl;)V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/internal/zzdn;)V

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/google/android/gms/common/api/internal/zzdm;

    invoke-direct {v7, v4, v5, v6, v5}, Lcom/google/android/gms/common/api/internal/zzdm;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/zze;Landroid/os/IBinder;Lcom/google/android/gms/common/api/internal/zzdl;)V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/internal/zzdn;)V

    :try_start_0
    invoke-interface {v6, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/internal/zzdn;)V

    :catch_0
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->zzaid()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/zze;->remove(I)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zzald()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbs:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbr:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbq:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzv(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdk;->zzgbt:Lcom/google/android/gms/common/api/internal/zzdn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/internal/zzdn;)V

    return-void
.end method
