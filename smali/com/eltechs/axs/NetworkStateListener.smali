.class public Lcom/eltechs/axs/NetworkStateListener;
.super Ljava/lang/Object;
.source "NetworkStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;
    }
.end annotation


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final networkStateChangedListener:Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;

.field private final networkStateIntentFilter:Landroid/content/IntentFilter;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->context:Landroid/content/Context;

    .line 42
    iget-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 43
    iget-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->context:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 50
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->networkStateIntentFilter:Landroid/content/IntentFilter;

    .line 51
    iget-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->networkStateIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcom/eltechs/axs/NetworkStateListener;->networkStateChangedListener:Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;

    .line 55
    new-instance p1, Lcom/eltechs/axs/NetworkStateListener$1;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/NetworkStateListener$1;-><init>(Lcom/eltechs/axs/NetworkStateListener;)V

    iput-object p1, p0, Lcom/eltechs/axs/NetworkStateListener;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/NetworkStateListener;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/eltechs/axs/NetworkStateListener;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/NetworkStateListener;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/eltechs/axs/NetworkStateListener;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/NetworkStateListener;)Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/eltechs/axs/NetworkStateListener;->networkStateChangedListener:Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/NetworkStateListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/eltechs/axs/NetworkStateListener;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/eltechs/axs/NetworkStateListener;->networkStateIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/NetworkStateListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/eltechs/axs/NetworkStateListener;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
