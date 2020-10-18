.class public final Lcom/google/android/gms/internal/zzcko;
.super Lcom/google/android/gms/internal/zzcjc;


# instance fields
.field private final zzjev:Lcom/google/android/gms/internal/zzckj;

.field private zzjph:Ljava/lang/Boolean;

.field private zzjpi:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;-><init>(Lcom/google/android/gms/internal/zzckj;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzckj;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcjc;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjpi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcif;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcif;->zzjfl:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzcno;->zzkn(Ljava/lang/String;)Z

    return-void
.end method

.method private final zzg(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Measurement Service called without app package"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjph:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcko;->zzjpi:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/zzz;->zze(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/zzt;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/zzt;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/zzt;->zzbp(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjph:Ljava/lang/Boolean;

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjph:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjpi:Ljava/lang/String;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/zzs;->zzb(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjpi:Ljava/lang/String;

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjpi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcif;Z)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcif;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcnl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcle;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcnn;

    if-nez p2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcno;->zzkp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/zzcnl;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzcnl;-><init>(Lcom/google/android/gms/internal/zzcnn;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Failed to get user attributes. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcif;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcif;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcii;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckw;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzckw;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcnl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckv;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzckv;-><init>(Lcom/google/android/gms/internal/zzcko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnn;

    if-nez p4, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcno;->zzkp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcnl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcnl;-><init>(Lcom/google/android/gms/internal/zzcnn;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p3

    const-string p4, "Failed to get user attributes. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzcif;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzcif;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcnl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcku;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/internal/zzcku;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnn;

    if-nez p3, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcnn;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcno;->zzkp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcnl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcnl;-><init>(Lcom/google/android/gms/internal/zzcnn;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to get user attributes. appId"

    iget-object p4, p4, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/internal/zzcjl;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/zzclg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzclg;-><init>(Lcom/google/android/gms/internal/zzcko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcif;)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzclf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcke;->zzbbk()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcii;Lcom/google/android/gms/internal/zzcif;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzcii;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcii;-><init>(Lcom/google/android/gms/internal/zzcii;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcnl;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzckq;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/zzckq;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcii;Lcom/google/android/gms/internal/zzcif;)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzckr;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/zzckr;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcii;Lcom/google/android/gms/internal/zzcif;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcix;Lcom/google/android/gms/internal/zzcif;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzckz;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcix;Lcom/google/android/gms/internal/zzcif;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcix;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/zzcla;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcla;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcix;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnl;Lcom/google/android/gms/internal/zzcif;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcnl;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzclc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzclc;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcnl;Lcom/google/android/gms/internal/zzcif;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcld;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzcld;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcnl;Lcom/google/android/gms/internal/zzcif;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcix;Ljava/lang/String;)[B
    .locals 9
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbaz()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckj;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcix;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjh;->zzjp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzclb;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/internal/zzclb;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcix;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcke;->zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzckj;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzbaz()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzckj;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/internal/zzcix;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcjh;->zzjp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcjj;->zzjs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzckj;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcix;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzcjh;->zzjp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcif;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckp;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcii;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcii;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzcii;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcii;-><init>(Lcom/google/android/gms/internal/zzcii;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcii;->zzjgn:Lcom/google/android/gms/internal/zzcnl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcnl;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzcks;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzcks;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcii;)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzckt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzckt;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcii;)V

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzcif;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;->zzb(Lcom/google/android/gms/internal/zzcif;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzckj;->zzkf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzcif;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcif;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcky;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcii;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcko;->zzg(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzckx;-><init>(Lcom/google/android/gms/internal/zzcko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcke;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcko;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzbau()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
