.class Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"

# interfaces
.implements Lcom/eltechs/axs/payments/ipc/IabIpc$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->startObtainingRemotePaymentsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

.field final synthetic val$remotePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iput-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->val$remotePackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public received(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$000(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    .line 393
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$100(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 394
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$102(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/ipc/IabIpc$Request;)Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    .line 395
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$200(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->val$remotePackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-static {p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->access$300(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    return-void
.end method
