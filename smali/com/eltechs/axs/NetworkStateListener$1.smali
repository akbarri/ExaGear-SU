.class Lcom/eltechs/axs/NetworkStateListener$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/NetworkStateListener;-><init>(Landroid/content/Context;Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/NetworkStateListener;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/NetworkStateListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/eltechs/axs/NetworkStateListener$1;->this$0:Lcom/eltechs/axs/NetworkStateListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    const-string p1, "127.0.0.1"

    .line 62
    iget-object p2, p0, Lcom/eltechs/axs/NetworkStateListener$1;->this$0:Lcom/eltechs/axs/NetworkStateListener;

    invoke-static {p2}, Lcom/eltechs/axs/NetworkStateListener;->access$000(Lcom/eltechs/axs/NetworkStateListener;)Landroid/net/ConnectivityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 68
    iget-object p2, p0, Lcom/eltechs/axs/NetworkStateListener$1;->this$0:Lcom/eltechs/axs/NetworkStateListener;

    invoke-static {p2}, Lcom/eltechs/axs/NetworkStateListener;->access$100(Lcom/eltechs/axs/NetworkStateListener;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x4

    .line 72
    new-array v2, p1, [B

    int-to-byte v3, p2

    aput-byte v3, v2, v0

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v3, 0x3

    aput-byte p2, v2, v3

    const-string p2, "%d.%d.%d.%d"

    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    aget-byte v5, v2, v0

    .line 80
    invoke-static {v5}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v0

    aget-byte v0, v2, v1

    .line 81
    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    aget-byte v0, v2, v4

    .line 82
    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    aget-byte v0, v2, v3

    .line 83
    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    .line 79
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/eltechs/axs/NetworkStateListener$1;->this$0:Lcom/eltechs/axs/NetworkStateListener;

    invoke-static {p2}, Lcom/eltechs/axs/NetworkStateListener;->access$200(Lcom/eltechs/axs/NetworkStateListener;)Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;->onNetworkStateChanged(Ljava/lang/String;)V

    return-void
.end method
