.class public Lcom/eltechs/axs/payments/ipc/IabIpcService;
.super Landroid/app/Service;
.source "IabIpcService.java"


# instance fields
.field gotInventoryListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

.field private iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

.field private intent:Landroid/content/Intent;

.field private startId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    .line 76
    new-instance v0, Lcom/eltechs/axs/payments/ipc/IabIpcService$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService$2;-><init>(Lcom/eltechs/axs/payments/ipc/IabIpcService;)V

    iput-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->gotInventoryListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/payments/ipc/IabIpcService;)Lcom/eltechs/axs/helpers/iab/IabHelper;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/payments/ipc/IabIpcService;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->cleanup()V

    return-void
.end method

.method static synthetic access$200(Lcom/eltechs/axs/payments/ipc/IabIpcService;Ljava/util/List;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->sendResponseAndStopSelf(Ljava/util/List;)V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->dispose()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    :cond_0
    return-void
.end method

.method private sendResponseAndStopSelf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->intent:Landroid/content/Intent;

    const-string v1, "REQUEST_EXTRA_SOURCE_PKG_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->intent:Landroid/content/Intent;

    const-string v2, "REQUEST_EXTRA_REQID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    const-class v3, Lcom/eltechs/axs/payments/ipc/IabIpcBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "RESPONSE_EXTRA_SKU_LIST"

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "RESPONSE_EXTRA_REQID"

    .line 112
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.eltechs.axs.permission.IAB_IPC"

    .line 114
    invoke-virtual {p0, v2, p1}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 116
    iget p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->startId:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->stopSelf(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabIpcService.onCreate() in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabIpcService.onDestroy() in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->cleanup()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IabIpcService.onStartCommand() in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    .line 44
    iput p3, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->startId:I

    .line 45
    iput-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->intent:Landroid/content/Intent;

    .line 47
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    const-string p3, "Only one processing IabIpcRequest supported"

    invoke-static {p1, p3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 50
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabHelper;

    invoke-virtual {p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, ""

    invoke-direct {p1, p3, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    .line 51
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->enableDebugLogging(Z)V

    .line 53
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    new-instance p2, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;-><init>(Lcom/eltechs/axs/payments/ipc/IabIpcService;)V

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->startSetup(Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;)V

    const/4 p1, 0x3

    return p1
.end method
