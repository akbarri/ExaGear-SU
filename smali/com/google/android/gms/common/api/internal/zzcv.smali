.class public final Lcom/google/android/gms/common/api/internal/zzcv;
.super Lcom/google/android/gms/internal/zzcyo;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static zzgbc:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzcyj;",
            "Lcom/google/android/gms/internal/zzcyk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private zzenh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsa:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzcyj;",
            "Lcom/google/android/gms/internal/zzcyk;",
            ">;"
        }
    .end annotation
.end field

.field private zzfwf:Lcom/google/android/gms/common/internal/zzr;

.field private zzfxl:Lcom/google/android/gms/internal/zzcyj;

.field private zzgbd:Lcom/google/android/gms/common/api/internal/zzcy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcyg;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbc:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzr;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/common/internal/zzr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbc:Lcom/google/android/gms/common/api/Api$zza;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zzcv;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/Api$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/internal/zzr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/zzr;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzcyj;",
            "Lcom/google/android/gms/internal/zzcyk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcyo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzcv;->mHandler:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zzr;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzr;->zzamf()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzenh:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfsa:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzcv;)Lcom/google/android/gms/common/api/internal/zzcy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbd:Lcom/google/android/gms/common/api/internal/zzcy;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzcv;Lcom/google/android/gms/internal/zzcyw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzcv;->zzc(Lcom/google/android/gms/internal/zzcyw;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzcyw;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcyw;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcyw;->zzbfa()Lcom/google/android/gms/common/internal/zzbt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbd:Lcom/google/android/gms/common/api/internal/zzcy;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzcy;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcyj;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbd:Lcom/google/android/gms/common/api/internal/zzcy;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzamy()Lcom/google/android/gms/common/internal/zzan;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzenh:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zzcy;->zzb(Lcom/google/android/gms/common/internal/zzan;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzcyj;->zza(Lcom/google/android/gms/internal/zzcyp;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbd:Lcom/google/android/gms/common/api/internal/zzcy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzcy;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcyj;->disconnect()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzcy;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcyj;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzr;->zzc(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfsa:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzcv;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzr;->zzaml()Lcom/google/android/gms/internal/zzcyk;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcyj;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzgbd:Lcom/google/android/gms/common/api/internal/zzcy;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzenh:Ljava/util/Set;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzenh:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcyj;->connect()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcv;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzcw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzcw;-><init>(Lcom/google/android/gms/common/api/internal/zzcv;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzakn()Lcom/google/android/gms/internal/zzcyj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    return-object v0
.end method

.method public final zzakz()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcyj;->disconnect()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcyw;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzcx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zzcx;-><init>(Lcom/google/android/gms/common/api/internal/zzcv;Lcom/google/android/gms/internal/zzcyw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
