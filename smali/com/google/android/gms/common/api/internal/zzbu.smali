.class final Lcom/google/android/gms/common/api/internal/zzbu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcy;
.implements Lcom/google/android/gms/common/internal/zzj;


# instance fields
.field private zzenh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsn:Lcom/google/android/gms/common/api/internal/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzfwd:Lcom/google/android/gms/common/api/Api$zze;

.field private zzfxp:Lcom/google/android/gms/common/internal/zzan;

.field final synthetic zzfzq:Lcom/google/android/gms/common/api/internal/zzbm;

.field private zzgad:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzbm;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/common/api/internal/zzh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfzq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzenh:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzgad:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfwd:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzbu;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfwd:Lcom/google/android/gms/common/api/Api$zze;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzbu;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzgad:Z

    return p1
.end method

.method private final zzakp()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzgad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfwd:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzenh:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzan;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzbu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzbu;->zzakp()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzbu;)Lcom/google/android/gms/common/api/internal/zzh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/internal/zzan;Ljava/util/Set;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzan;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzenh:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzbu;->zzakp()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "GoogleApiManager"

    const-string p2, "Received null response from onSignInSuccess"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zzbu;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfzq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/internal/zzbm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzbv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zzbv;-><init>(Lcom/google/android/gms/common/api/internal/zzbu;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfzq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzbm;->zzj(Lcom/google/android/gms/common/api/internal/zzbm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzbo;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
