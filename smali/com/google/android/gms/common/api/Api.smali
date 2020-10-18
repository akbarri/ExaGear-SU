.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Api$zzg;,
        Lcom/google/android/gms/common/api/Api$zze;,
        Lcom/google/android/gms/common/api/Api$zzb;,
        Lcom/google/android/gms/common/api/Api$zzi;,
        Lcom/google/android/gms/common/api/Api$zzf;,
        Lcom/google/android/gms/common/api/Api$zzc;,
        Lcom/google/android/gms/common/api/Api$ApiOptions;,
        Lcom/google/android/gms/common/api/Api$zzh;,
        Lcom/google/android/gms/common/api/Api$zza;,
        Lcom/google/android/gms/common/api/Api$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzfsa:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private final zzfsb:Lcom/google/android/gms/common/api/Api$zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzh<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private final zzfsc:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzfsd:Lcom/google/android/gms/common/api/Api$zzi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "TC;TO;>;",
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->zzfsa:Lcom/google/android/gms/common/api/Api$zza;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->zzfsb:Lcom/google/android/gms/common/api/Api$zzh;

    iput-object p3, p0, Lcom/google/android/gms/common/api/Api;->zzfsc:Lcom/google/android/gms/common/api/Api$zzf;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->zzfsd:Lcom/google/android/gms/common/api/Api$zzi;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final zzahk()Lcom/google/android/gms/common/api/Api$zzd;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzd<",
            "*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzfsa:Lcom/google/android/gms/common/api/Api$zza;

    return-object v0
.end method

.method public final zzahl()Lcom/google/android/gms/common/api/Api$zza;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzfsa:Lcom/google/android/gms/common/api/Api$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzfsa:Lcom/google/android/gms/common/api/Api$zza;

    return-object v0
.end method

.method public final zzahm()Lcom/google/android/gms/common/api/Api$zzc;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzfsc:Lcom/google/android/gms/common/api/Api$zzf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzfsc:Lcom/google/android/gms/common/api/Api$zzf;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
