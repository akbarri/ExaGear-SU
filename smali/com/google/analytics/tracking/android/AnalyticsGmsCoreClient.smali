.class Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_FAILED:I = 0x1

.field public static final KEY_APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final REMOTE_EXECUTION_FAILED:I = 0x2

.field static final SERVICE_ACTION:Ljava/lang/String; = "com.google.android.gms.analytics.service.START"

.field private static final SERVICE_DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.analytics.internal.IAnalyticsService"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

.field private mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

.field private mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onConnectedListener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    if-nez p3, :cond_1

    .line 64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onConnectionFailedListener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    iput-object p3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Lcom/google/android/gms/analytics/internal/IAnalyticsService;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onServiceBound()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    return-object p0
.end method

.method private getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->checkConnected()V

    .line 147
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object v0
.end method

.method private onConnectionSuccess()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onConnected()V

    return-void
.end method

.method private onServiceBound()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionSuccess()V

    return-void
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public clearHits()V
    .locals 3

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->clearHits()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public connect()V
    .locals 4

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    .line 79
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    const-string v0, "Calling connect() while still connected, missing disconnect()."

    .line 81
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    new-instance v1, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;-><init>(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 85
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 90
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;->onConnectionFailed(ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 3

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    .line 104
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    iput-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onDisconnected()V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendHit failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
