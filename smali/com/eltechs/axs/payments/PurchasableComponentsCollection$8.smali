.class Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"

# interfaces
.implements Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->buyUnlim(Landroid/app/Activity;ILcom/eltechs/axs/payments/PurchaseCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

.field final synthetic val$cb:Lcom/eltechs/axs/payments/PurchaseCompletionCallback;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/PurchaseCompletionCallback;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;->this$0:Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    iput-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;->val$cb:Lcom/eltechs/axs/payments/PurchaseCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public googlePlayInteractionCompleted()V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;->val$cb:Lcom/eltechs/axs/payments/PurchaseCompletionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;->val$cb:Lcom/eltechs/axs/payments/PurchaseCompletionCallback;

    invoke-interface {v0}, Lcom/eltechs/axs/payments/PurchaseCompletionCallback;->completed()V

    :cond_0
    return-void
.end method
