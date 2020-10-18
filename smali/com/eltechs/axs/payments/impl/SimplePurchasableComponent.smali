.class public Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;
.super Ljava/lang/Object;
.source "SimplePurchasableComponent.java"

# interfaces
.implements Lcom/eltechs/axs/payments/PurchasableComponent;


# instance fields
.field private final infoResId:I

.field private final name:Ljava/lang/String;

.field private final uiOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->name:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->uiOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    .line 28
    iput p3, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->infoResId:I

    return-void
.end method


# virtual methods
.method public getInfoResId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->infoResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUiOverlay()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->uiOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[purchase: %s]"

    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/eltechs/axs/payments/impl/SimplePurchasableComponent;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
