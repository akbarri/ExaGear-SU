.class Lcom/eltechs/axs/payments/ipc/IabIpcService$2;
.super Ljava/lang/Object;
.source "IabIpcService.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/payments/ipc/IabIpcService;
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

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$2;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Inventory;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 82
    iget-object v0, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$2;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {v0}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$000(Lcom/eltechs/axs/payments/ipc/IabIpcService;)Lcom/eltechs/axs/helpers/iab/IabHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$2;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$200(Lcom/eltechs/axs/payments/ipc/IabIpcService;Ljava/util/List;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/eltechs/axs/helpers/iab/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/eltechs/axs/payments/ipc/IabIpcService$2;->this$0:Lcom/eltechs/axs/payments/ipc/IabIpcService;

    invoke-static {p2, p1}, Lcom/eltechs/axs/payments/ipc/IabIpcService;->access$200(Lcom/eltechs/axs/payments/ipc/IabIpcService;Ljava/util/List;)V

    return-void
.end method
