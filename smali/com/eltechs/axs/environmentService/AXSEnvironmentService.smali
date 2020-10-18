.class public Lcom/eltechs/axs/environmentService/AXSEnvironmentService;
.super Landroid/app/Service;
.source "AXSEnvironmentService.java"


# instance fields
.field private final startedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/environmentService/EnvironmentComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startedComponents:Ljava/util/List;

    return-void
.end method

.method private configureAsForegroundService()V
    .locals 7

    .line 138
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    iget-object v0, v0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notification"

    .line 142
    invoke-virtual {p0, v2}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 145
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_0

    .line 149
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v5, "notification_channel_id"

    const-string v6, "ExaGear"

    invoke-direct {v3, v5, v6, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 152
    :cond_0
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v5, "notification_channel_id"

    invoke-direct {v3, p0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/TrayConfiguration;->getTrayIcon()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/TrayConfiguration;->getReturnToDescription()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/TrayConfiguration;->getTrayIconName()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 156
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 159
    invoke-virtual {v2, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 160
    invoke-virtual {p0, v4, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private destroy()V
    .locals 0
    .annotation runtime Lcom/eltechs/axs/container/annotations/PreRemove;
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->shutdownComponents()V

    .line 81
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->stopSelf()V

    return-void
.end method

.method private getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;
    .locals 1

    .line 93
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    .line 95
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    return-object v0
.end method

.method private shutdownComponents()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    .line 124
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->stop()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 132
    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->setEnvironmentServiceInstance(Lcom/eltechs/axs/environmentService/AXSEnvironmentService;)V

    :cond_1
    return-void
.end method

.method private startEnvironmentComponents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    .line 104
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->start()V

    .line 105
    iget-object v2, p0, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startedComponents:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startedComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    .line 111
    invoke-virtual {v2}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->stop()V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startedComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->shutdownComponents()V

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 53
    sget-object p1, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 54
    sget-object p1, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 56
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    .line 57
    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object p2

    iget-object p2, p2, Lcom/eltechs/axs/environmentService/AXSEnvironment;->startupCallback:Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;

    .line 58
    invoke-interface {p1, p0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->setEnvironmentServiceInstance(Lcom/eltechs/axs/environmentService/AXSEnvironmentService;)V

    const/4 p3, 0x2

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->startEnvironmentComponents()V

    .line 63
    invoke-interface {p2}, Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;->serviceStarted()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->configureAsForegroundService()V

    return p3

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;->stopSelf()V

    const/4 v1, 0x0

    .line 67
    invoke-interface {p1, v1}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->setEnvironmentServiceInstance(Lcom/eltechs/axs/environmentService/AXSEnvironmentService;)V

    .line 68
    invoke-interface {p2, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;->serviceFailed(Ljava/lang/Throwable;)V

    return p3
.end method
