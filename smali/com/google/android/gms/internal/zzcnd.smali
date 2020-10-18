.class public final Lcom/google/android/gms/internal/zzcnd;
.super Lcom/google/android/gms/internal/zzcli;


# instance fields
.field private handler:Landroid/os/Handler;

.field private zzjsb:J

.field private final zzjsc:Lcom/google/android/gms/internal/zzcip;

.field private final zzjsd:Lcom/google/android/gms/internal/zzcip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcne;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcne;-><init>(Lcom/google/android/gms/internal/zzcnd;Lcom/google/android/gms/internal/zzckj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsc:Lcom/google/android/gms/internal/zzcip;

    new-instance p1, Lcom/google/android/gms/internal/zzcnf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcnf;-><init>(Lcom/google/android/gms/internal/zzcnd;Lcom/google/android/gms/internal/zzckj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsd:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsb:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcnd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnd;->zzbco()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcnd;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcnd;->zzbe(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcnd;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcnd;->zzbf(J)V

    return-void
.end method

.method private final zzbcn()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->handler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzbco()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcnd;->zzbx(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayb()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->zzaj(J)V

    return-void
.end method

.method private final zzbe(J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnd;->zzbcn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsc:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsd:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsb:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcju;->zzjmb:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcju;->zzjmd:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcju;->zzjmc:Lcom/google/android/gms/internal/zzcjw;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjw;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcju;->zzjme:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcju;->zzjmc:Lcom/google/android/gms/internal/zzcjw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjw;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsc:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcju;->zzjma:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcju;->zzjme:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcip;->zzs(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsd:Lcom/google/android/gms/internal/zzcip;

    const-wide/32 v2, 0x36ee80

    goto :goto_0
.end method

.method private final zzbf(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnd;->zzbcn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsc:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsd:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcju;->zzjme:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcju;->zzjme:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsb:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaxz()V

    return-void
.end method

.method public final bridge synthetic zzaya()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaya()V

    return-void
.end method

.method public final bridge synthetic zzayb()Lcom/google/android/gms/internal/zzcia;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayb()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayc()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayc()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayd()Lcom/google/android/gms/internal/zzclk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayd()Lcom/google/android/gms/internal/zzclk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaye()Lcom/google/android/gms/internal/zzcje;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaye()Lcom/google/android/gms/internal/zzcje;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayf()Lcom/google/android/gms/internal/zzcir;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayf()Lcom/google/android/gms/internal/zzcir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayg()Lcom/google/android/gms/internal/zzcme;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayg()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayh()Lcom/google/android/gms/internal/zzcma;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayh()Lcom/google/android/gms/internal/zzcma;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayi()Lcom/google/android/gms/internal/zzcjf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayi()Lcom/google/android/gms/internal/zzcjf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayj()Lcom/google/android/gms/internal/zzcil;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayj()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayk()Lcom/google/android/gms/internal/zzcjh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayk()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayl()Lcom/google/android/gms/internal/zzcno;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaym()Lcom/google/android/gms/internal/zzckd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzaym()Lcom/google/android/gms/internal/zzckd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayn()Lcom/google/android/gms/internal/zzcnd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayn()Lcom/google/android/gms/internal/zzcnd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayo()Lcom/google/android/gms/internal/zzcke;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayp()Lcom/google/android/gms/internal/zzcjj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayq()Lcom/google/android/gms/internal/zzcju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzayr()Lcom/google/android/gms/internal/zzcik;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzayr()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    return-object v0
.end method

.method protected final zzazq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbx(Z)Z
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcju;->zzjmd:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsb:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcju;->zzjme:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string v4, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayh()Lcom/google/android/gms/internal/zzcma;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcma;->zzbcg()Lcom/google/android/gms/internal/zzcmd;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/internal/zzcma;->zza(Lcom/google/android/gms/internal/zzclz;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayd()Lcom/google/android/gms/internal/zzclk;

    move-result-object v2

    const-string v4, "auto"

    const-string v5, "_e"

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/zzclk;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsb:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsd:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcip;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjsd:Lcom/google/android/gms/internal/zzcip;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcju;->zzjme:Lcom/google/android/gms/internal/zzcjx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjx;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcip;->zzs(J)V

    return v3
.end method

.method public final bridge synthetic zzwj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzwj()V

    return-void
.end method

.method public final bridge synthetic zzxx()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method
