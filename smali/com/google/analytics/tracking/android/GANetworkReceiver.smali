.class Lcom/google/analytics/tracking/android/GANetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GANetworkReceiver.java"


# static fields
.field static final SELF_IDENTIFYING_EXTRA:Ljava/lang/String; = "com.google.analytics.tracking.android.GANetworkReceiver"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mManager:Lcom/google/analytics/tracking/android/ServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/ServiceManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    return-void
.end method

.method public static sendRadioPoweredBroadcast(Landroid/content/Context;)V
    .locals 3

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    sget-object v1, Lcom/google/analytics/tracking/android/GANetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "noConnectivity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/analytics/tracking/android/ServiceManager;->updateConnectivityStatus(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "com.google.analytics.RADIO_POWERED"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/analytics/tracking/android/GANetworkReceiver;->SELF_IDENTIFYING_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/ServiceManager;->onRadioPowered()V

    :cond_2
    :goto_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.analytics.RADIO_POWERED"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
