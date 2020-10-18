.class Lcom/eltechs/axs/payments/ipc/IabIpcService$1;
.super Ljava/lang/Object;
.source "IabIpcService.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/payments/ipc/IabIpcService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/payments/ipc/IabIpcService;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/eltechs/axs/helpers/iab/IabResult;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {v0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$000(Lcom/eltechs/axs/payments/ipc/IabIpcService;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {p1}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$100(Lcom/eltechs/axs/payments/ipc/IabIpcService;)V

    .line 64
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$200(Lcom/eltechs/axs/payments/ipc/IabIpcService;Ljava/util/List;)V

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {p1}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$000(Lcom/eltechs/axs/payments/ipc/IabIpcService;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$1;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    iget-object v1, v1, Lcom/eltechs/axs/payments/ipc/IabIpcService;->gotInventoryListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method
