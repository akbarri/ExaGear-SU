.class public Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "EtcHostsFileUpdaterComponent.java"


# instance fields
.field private final exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

.field private transient listener:Lcom/eltechs/axs/NetworkStateListener;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->listener:Lcom/eltechs/axs/NetworkStateListener;

    .line 27
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;)Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 34
    new-instance v0, Lcom/eltechs/axs/NetworkStateListener;

    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent$1;

    invoke-direct {v2, p0}, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent$1;-><init>(Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;)V

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/NetworkStateListener;-><init>(Landroid/content/Context;Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;)V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->listener:Lcom/eltechs/axs/NetworkStateListener;

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->listener:Lcom/eltechs/axs/NetworkStateListener;

    invoke-virtual {v0}, Lcom/eltechs/axs/NetworkStateListener;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->listener:Lcom/eltechs/axs/NetworkStateListener;

    invoke-virtual {v0}, Lcom/eltechs/axs/NetworkStateListener;->stop()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->listener:Lcom/eltechs/axs/NetworkStateListener;

    return-void
.end method
