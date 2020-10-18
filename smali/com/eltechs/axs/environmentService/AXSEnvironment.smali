.class public Lcom/eltechs/axs/environmentService/AXSEnvironment;
.super Ljava/lang/Object;
.source "AXSEnvironment.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/eltechs/axs/environmentService/EnvironmentComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/environmentService/EnvironmentComponent;",
            ">;"
        }
    .end annotation
.end field

.field startupCallback:Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;

.field trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->components:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->startupCallback:Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;

    .line 35
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->applicationContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V

    return-void
.end method

.method private getService()Lcom/eltechs/axs/environmentService/AXSEnvironmentService;
    .locals 1

    .line 129
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    .line 130
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironmentServiceInstance()Lcom/eltechs/axs/environmentService/AXSEnvironmentService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addComponent(Lcom/eltechs/axs/environmentService/EnvironmentComponent;)V
    .locals 6

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "A component of type \'%s\' is already registered within the guest environment."

    new-array v4, v2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 63
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getService()Lcom/eltechs/axs/environmentService/AXSEnvironmentService;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "It seems useless to add component after service has been already started."

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1, p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->addedToEnvironment(Lcom/eltechs/axs/environmentService/AXSEnvironment;)V

    return-void
.end method

.method public freezeEnvironment()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getService()Lcom/eltechs/axs/environmentService/AXSEnvironmentService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 137
    const-class v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    .line 138
    const-class v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    invoke-virtual {p0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->suspendPlayback()V

    :cond_1
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->freezeGuestApplications()V

    :cond_2
    return-void
.end method

.method public getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/eltechs/axs/environmentService/EnvironmentComponent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNativeLibsConfiguration()Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;
    .locals 1

    .line 97
    const-class v0, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/eltechs/axs/environmentService/EnvironmentComponent;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resumeEnvironment()V
    .locals 2

    .line 153
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getService()Lcom/eltechs/axs/environmentService/AXSEnvironmentService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 155
    const-class v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    .line 156
    const-class v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    invoke-virtual {p0, v1}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->resumeGuestApplications()V

    :cond_1
    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v1}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->resumePlayback()V

    :cond_2
    return-void
.end method

.method public startEnvironmentService(Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;Lcom/eltechs/axs/environmentService/TrayConfiguration;)V
    .locals 2

    .line 121
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->startupCallback:Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;

    .line 122
    iput-object p2, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;

    .line 124
    iget-object p1, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->applicationContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/eltechs/axs/environmentService/AXSEnvironment;->applicationContext:Landroid/content/Context;

    const-class v1, Lcom/eltechs/axs/environmentService/AXSEnvironmentService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
