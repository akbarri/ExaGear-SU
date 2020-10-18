.class public Lcom/google/android/gms/common/api/GoogleApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/GoogleApi$zza;
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
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zzalj:Landroid/os/Looper;

.field private final zzfop:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zzfsn:Lcom/google/android/gms/common/api/internal/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzfso:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzfsp:Lcom/google/android/gms/common/api/internal/zzda;

.field protected final zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/GoogleApi$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object p2, p4, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfst:Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzalj:Landroid/os/Looper;

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    iget-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {p2, p3}, Lcom/google/android/gms/common/api/internal/zzh;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zzbw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/common/api/internal/zzbw;-><init>(Lcom/google/android/gms/common/api/GoogleApi;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfso:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zzbm;->zzck(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/zzbm;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zzbm;->zzaka()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->mId:I

    iget-object p2, p4, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfss:Lcom/google/android/gms/common/api/internal/zzda;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsp:Lcom/google/android/gms/common/api/internal/zzda;

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    iget-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zzah;->zza(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/zzbm;Lcom/google/android/gms/common/api/internal/zzh;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/zzda;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/internal/zzda;)Lcom/google/android/gms/common/api/zzd;

    move-result-object p4

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/common/api/zzd;->zza(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzd;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/api/zzd;->zzahy()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzalj:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zzh;->zzb(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zzbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zzbw;-><init>(Lcom/google/android/gms/common/api/GoogleApi;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfso:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzbm;->zzck(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/zzbm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzbm;->zzaka()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mId:I

    new-instance p1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {p1}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsp:Lcom/google/android/gms/common/api/internal/zzda;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/zzda;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/zzda;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p3, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {p3}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    invoke-virtual {p3, p4}, Lcom/google/android/gms/common/api/zzd;->zza(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzd;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/internal/zzda;)Lcom/google/android/gms/common/api/zzd;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/zzd;->zzahy()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/GoogleApi$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object p1, p4, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfst:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzalj:Landroid/os/Looper;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    iget-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/api/internal/zzh;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zzbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zzbw;-><init>(Lcom/google/android/gms/common/api/GoogleApi;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfso:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzbm;->zzck(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/zzbm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzbm;->zzaka()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mId:I

    iget-object p1, p4, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfss:Lcom/google/android/gms/common/api/internal/zzda;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsp:Lcom/google/android/gms/common/api/internal/zzda;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzda;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/zzda;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/internal/zzda;)Lcom/google/android/gms/common/api/zzd;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/api/zzd;->zzahy()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    return-void
.end method

.method private final zza(ILcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;
    .locals 1
    .param p2    # Lcom/google/android/gms/common/api/internal/zzm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zzm<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzaiq()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/zzm;)V

    return-object p2
.end method

.method private final zza(ILcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p2    # Lcom/google/android/gms/common/api/internal/zzde;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(I",
            "Lcom/google/android/gms/common/api/internal/zzde<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsp:Lcom/google/android/gms/common/api/internal/zzda;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/zzde;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/zzda;)V

    invoke-virtual {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zzahx()Lcom/google/android/gms/common/internal/zzs;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzs;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    instance-of v1, v1, Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    check-cast v1, Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;->getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    instance-of v1, v1, Lcom/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    check-cast v1, Lcom/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzs;->zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    instance-of v1, v1, Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    check-cast v1, Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;->getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzacf()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzs;->zze(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getInstanceId()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mId:I

    return v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzalj:Landroid/os/Looper;

    return-object v0
.end method

.method public zza(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/zzbo;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/zzbo<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahx()Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzs;->zzgo(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzs;->zzgp(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzs;->zzamn()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzahl()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzalj:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/zzcm;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zzcv;
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzcv;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzahx()Lcom/google/android/gms/common/internal/zzs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzs;->zzamn()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/zzcv;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzr;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zzm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

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

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(ILcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zzck;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzck<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdo;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/zzcq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zzcq<",
            "TA;*>;U:",
            "Lcom/google/android/gms/common/api/internal/zzdo<",
            "TA;*>;>(TT;TU;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzcq;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zzdo;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzcq;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zzdo;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzck;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsq:Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzbm;->zza(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/zzde<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(ILcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzaht()Lcom/google/android/gms/common/api/Api;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfop:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method public final zzahu()Lcom/google/android/gms/common/api/Api$ApiOptions;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsm:Lcom/google/android/gms/common/api/Api$ApiOptions;

    return-object v0
.end method

.method public final zzahv()Lcom/google/android/gms/common/api/internal/zzh;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfsn:Lcom/google/android/gms/common/api/internal/zzh;

    return-object v0
.end method

.method public final zzahw()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzfso:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zzm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

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

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(ILcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/zzde<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(ILcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zzm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

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

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(ILcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p1

    return-object p1
.end method
