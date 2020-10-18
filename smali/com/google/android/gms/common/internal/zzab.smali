.class public abstract Lcom/google/android/gms/common/internal/zzab;
.super Lcom/google/android/gms/common/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zze;
.implements Lcom/google/android/gms/common/internal/zzaf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzd<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/Api$zze;",
        "Lcom/google/android/gms/common/internal/zzaf;"
    }
.end annotation


# instance fields
.field private final zzeho:Landroid/accounts/Account;

.field private final zzenh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfwf:Lcom/google/android/gms/common/internal/zzr;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzag;->zzcp(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzag;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzag;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzag;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/gms/common/internal/zzac;

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/internal/zzac;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzad;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzad;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v7, v0

    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzr;->zzamj()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzag;Lcom/google/android/gms/common/zzf;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/google/android/gms/common/internal/zzab;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzr;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/gms/common/internal/zzab;->zzeho:Landroid/accounts/Account;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzr;->zzamg()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object v1, v9, Lcom/google/android/gms/common/internal/zzab;->zzenh:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab;->zzeho:Landroid/accounts/Account;

    return-object v0
.end method

.method public final zzahq()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public zzalu()[Lcom/google/android/gms/common/zzc;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method protected final zzaly()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab;->zzenh:Ljava/util/Set;

    return-object v0
.end method

.method protected final zzamr()Lcom/google/android/gms/common/internal/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab;->zzfwf:Lcom/google/android/gms/common/internal/zzr;

    return-object v0
.end method

.method protected zzb(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
