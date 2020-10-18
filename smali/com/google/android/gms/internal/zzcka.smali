.class public final Lcom/google/android/gms/internal/zzcka;
.super Ljava/lang/Object;


# instance fields
.field private final zzjmp:Lcom/google/android/gms/internal/zzckc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzckc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcka;->zzjmp:Lcom/google/android/gms/internal/zzckc;

    return-void
.end method

.method public static zzbj(Landroid/content/Context;)Z
    .locals 4
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzckj;->zzed(Landroid/content/Context;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckj;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v7

    if-nez p2, :cond_0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Receiver called with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v3, "Local receiver got"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Starting wakeful intent."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcka;->zzjmp:Lcom/google/android/gms/internal/zzckc;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzckc;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcka;->zzjmp:Lcom/google/android/gms/internal/zzckc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzckc;->doGoAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "Install referrer extras are null"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbay()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v3, "Install referrer extras are"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "?"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckj;->zzayl()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcno;->zzp(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbba()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p1

    const-string p2, "No campaign defined in install referrer broadcast"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :cond_6
    const-string v0, "referrer_timestamp_seconds"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v0

    cmp-long p2, v9, v3

    if-nez p2, :cond_7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzbaw()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v0, "Install referrer is missing timestamp"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzcjl;->log(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckj;->zzayo()Lcom/google/android/gms/internal/zzcke;

    move-result-object p2

    new-instance v11, Lcom/google/android/gms/internal/zzckb;

    move-object v0, v11

    move-object v1, p0

    move-wide v3, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzckb;-><init>(Lcom/google/android/gms/internal/zzcka;Lcom/google/android/gms/internal/zzckj;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/internal/zzcjj;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {p2, v11}, Lcom/google/android/gms/internal/zzcke;->zzh(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
