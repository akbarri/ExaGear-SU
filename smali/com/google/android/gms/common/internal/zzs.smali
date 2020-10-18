.class public final Lcom/google/android/gms/common/internal/zzs;
.super Ljava/lang/Object;


# instance fields
.field private zzehh:Ljava/lang/String;

.field private zzeho:Landroid/accounts/Account;

.field private zzfsy:I

.field private zzfta:Ljava/lang/String;

.field private zzgfs:Lcom/google/android/gms/internal/zzcyk;

.field private zzgfu:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzfsy:I

    sget-object v0, Lcom/google/android/gms/internal/zzcyk;->zzklp:Lcom/google/android/gms/internal/zzcyk;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzgfs:Lcom/google/android/gms/internal/zzcyk;

    return-void
.end method


# virtual methods
.method public final zzamn()Lcom/google/android/gms/common/internal/zzr;
    .locals 10

    new-instance v9, Lcom/google/android/gms/common/internal/zzr;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzeho:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zzgfu:Landroid/support/v4/util/ArraySet;

    iget-object v6, p0, Lcom/google/android/gms/common/internal/zzs;->zzehh:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/internal/zzs;->zzfta:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/internal/zzs;->zzgfs:Lcom/google/android/gms/internal/zzcyk;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzr;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcyk;)V

    return-object v9
.end method

.method public final zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzeho:Landroid/accounts/Account;

    return-object p0
.end method

.method public final zze(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/zzs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/zzs;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzgfu:Landroid/support/v4/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzgfu:Landroid/support/v4/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzgfu:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final zzgo(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzehh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzgp(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzfta:Ljava/lang/String;

    return-object p0
.end method
