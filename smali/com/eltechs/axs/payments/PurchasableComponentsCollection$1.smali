.class final Lcom/eltechs/axs/payments/PurchasableComponentsCollection$1;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->create(Ljava/lang/Class;Landroid/content/Context;Z)Lcom/eltechs/axs/payments/PurchasableComponentsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$components:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$1;->val$components:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/reflect/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$1;->val$components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/payments/PurchasableComponent;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
