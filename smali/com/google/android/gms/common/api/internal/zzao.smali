.class public final Lcom/google/android/gms/common/api/internal/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzbh;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzfth:Lcom/google/android/gms/common/api/Api$zza;
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

.field private final zzfwa:Ljava/util/concurrent/locks/Lock;

.field private final zzfwf:Lcom/google/android/gms/common/internal/zzr;

.field private final zzfwi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfwk:Lcom/google/android/gms/common/zzf;

.field private zzfwt:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

.field private zzfxg:I

.field private zzfxh:I

.field private zzfxi:I

.field private final zzfxj:Landroid/os/Bundle;

.field private final zzfxk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Api$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzfxl:Lcom/google/android/gms/internal/zzcyj;

.field private zzfxm:Z

.field private zzfxn:Z

.field private zzfxo:Z

.field private zzfxp:Lcom/google/android/gms/common/internal/zzan;

.field private zzfxq:Z

.field private zzfxr:Z

.field private zzfxs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzbi;Lcom/google/android/gms/common/internal/zzr;Ljava/util/Map;Lcom/google/android/gms/common/zzf;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzbi;",
            "Lcom/google/android/gms/common/internal/zzr;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/zzf;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzcyj;",
            "Lcom/google/android/gms/internal/zzcyk;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxh:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxj:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxk:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwi:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwk:Lcom/google/android/gms/common/zzf;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfth:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwa:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zzao;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzao;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzao;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/internal/zzcyw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zza(Lcom/google/android/gms/internal/zzcyw;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcyw;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzbs(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcyw;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcyw;->zzbfa()Lcom/google/android/gms/common/internal/zzbt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "GoogleApiClientConnecting"

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxo:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzamy()Lcom/google/android/gms/common/internal/zzan;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzamz()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxq:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzana()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxr:Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajl()V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzd(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajn()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajl()V

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzao;I)Z
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzbs(I)Z

    move-result p0

    return p0
.end method

.method private final zzajk()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    if-gez v0, :cond_1

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzbi;->zzfvq:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzba;->zzaju()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    const-string v1, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwt:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxg:I

    iput v1, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfzb:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwt:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final zzajl()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxo:Z

    if-eqz v0, :cond_5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxh:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajk()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajm()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyj:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxs:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbl;->zzajx()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/zzau;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zzau;-><init>(Lcom/google/android/gms/common/api/internal/zzao;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private final zzajm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzbi;->zzajw()V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbl;->zzajx()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zzap;-><init>(Lcom/google/android/gms/common/api/internal/zzao;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxr:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcyj;->zza(Lcom/google/android/gms/common/internal/zzan;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzbk(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyj:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxj:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxj:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzbi;->zzfzc:Lcom/google/android/gms/common/api/internal/zzcd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zzcd;->zzk(Landroid/os/Bundle;)V

    return-void
.end method

.method private final zzajn()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfvq:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zzba;->zzfyk:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzajo()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxs:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final zzajp()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzr;->zzamf()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzr;->zzamh()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zzahm()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzt;

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzt;->zzenh:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwa:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzahk()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_0
    move p3, v2

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwk:Lcom/google/android/gms/common/zzf;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/google/android/gms/common/zzf;->zzbo(I)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_1
    if-eqz p3, :cond_4

    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwt:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxg:I

    if-ge v0, p3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwt:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxg:I

    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object p3, p3, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzahm()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzd(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p0

    return p0
.end method

.method private final zzbk(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcyj;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcyj;->zzbet()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcyj;->disconnect()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    :cond_1
    return-void
.end method

.method private final zzbs(I)Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxh:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzbi;->zzfvq:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzba;->zzaju()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected callback in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "mRemainingConnections="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxh:I

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzao;->zzbt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzao;->zzbt(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but received callback for step "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static zzbt(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "STEP_GETTING_REMOTE_SERVICE"

    return-object p0

    :pswitch_1
    const-string p0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/api/internal/zzbi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    return-object p0
.end method

.method private final zzd(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxm:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/internal/zzao;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/internal/zzcyj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajo()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzbk(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzbi;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfzc:Lcom/google/android/gms/common/api/internal/zzcd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzcd;->zzc(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/internal/zzao;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajp()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/internal/zzan;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxp:Lcom/google/android/gms/common/internal/zzan;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/api/internal/zzao;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajn()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/common/api/internal/zzao;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajl()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/common/api/internal/zzao;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajk()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final begin()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwt:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxh:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxq:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwi:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyj:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zzahm()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zzahk()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v8

    if-ne v8, v2, :cond_0

    move v8, v2

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    or-int/2addr v5, v8

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwi:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$zze;->zzacc()Z

    move-result v9

    if-eqz v9, :cond_2

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    if-eqz v8, :cond_1

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxk:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zzahm()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxm:Z

    :cond_2
    :goto_2
    new-instance v9, Lcom/google/android/gms/common/api/internal/zzaq;

    invoke-direct {v9, p0, v6, v8}, Lcom/google/android/gms/common/api/internal/zzaq;-><init>(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/api/Api;Z)V

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zzbi;->zzfvq:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzr;->zzc(Ljava/lang/Integer;)V

    new-instance v10, Lcom/google/android/gms/common/api/internal/zzax;

    invoke-direct {v10, p0, v1}, Lcom/google/android/gms/common/api/internal/zzax;-><init>(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/api/internal/zzap;)V

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfth:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzao;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfvq:Lcom/google/android/gms/common/api/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzr;->zzaml()Lcom/google/android/gms/internal/zzcyk;

    move-result-object v8

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcyj;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxl:Lcom/google/android/gms/internal/zzcyj;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfyj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxi:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxs:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbl;->zzajx()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzar;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/common/api/internal/zzar;-><init>(Lcom/google/android/gms/common/api/internal/zzao;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final connect()V
    .locals 0

    return-void
.end method

.method public final disconnect()Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajo()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzbk(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzbi;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzbs(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajk()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajm()V

    :cond_2
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzbs(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajk()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzao;->zzajm()V

    :cond_1
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zzm<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzao;->zzfxd:Lcom/google/android/gms/common/api/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbi;->zzfvq:Lcom/google/android/gms/common/api/internal/zzba;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzba;->zzfwo:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zzm<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
