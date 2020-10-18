.class public Lcom/eltechs/axs/payments/ipc/IabIpcBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IabIpcBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabIpcBroadcastReceiver.onReceive() in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intent "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    const-string p1, "RESPONSE_EXTRA_SKU_LIST"

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sku list = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/eltechs/axs/payments/ipc/IabIpc;->logDebug(Ljava/lang/String;)V

    .line 25
    sget-object p2, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    if-eqz p2, :cond_0

    .line 27
    sget-object p2, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/payments/ipc/IabIpc$Response;->received(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 28
    sput-object p1, Lcom/eltechs/axs/payments/ipc/IabIpc;->gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

    :cond_0
    return-void
.end method
