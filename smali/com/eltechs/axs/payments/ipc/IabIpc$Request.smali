.class public Lcom/eltechs/axs/payments/ipc/IabIpc$Request;
.super Ljava/lang/Object;
.source "IabIpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/payments/ipc/IabIpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    return-void
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Lcom/eltechs/axs/payments/ipc/IabIpc$Response;)V
    .locals 3

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    const-class v1, Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REQUEST_EXTRA_SOURCE_PKG_NAME"

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REQUEST_EXTRA_REQID"

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    sget-object v1, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "Only one pending IabIpcRequest supported."

    invoke-static {v2, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 45
    sput-object p3, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting IabIpcService in "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "service not started"

    .line 51
    invoke-static {p1}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    .line 52
    sget-object p1, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    if-eqz p1, :cond_1

    .line 54
    sget-object p1, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/eltechs/axs/payments/ipc/IabIpc$Response;->received(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 55
    sput-object p1, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    :cond_1
    return-void

    :cond_2
    return-void
.end method
