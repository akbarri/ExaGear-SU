.class public Lcom/eltechs/axs/payments/impl/GratuitComponent;
.super Ljava/lang/Object;
.source "GratuitComponent.java"

# interfaces
.implements Lcom/eltechs/axs/payments/PurchasableComponent;


# instance fields
.field private final infoResId:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/payments/impl/GratuitComponent;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/eltechs/axs/payments/impl/GratuitComponent;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/eltechs/axs/payments/impl/GratuitComponent;->infoResId:I

    return-void
.end method


# virtual methods
.method public getInfoResId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/eltechs/axs/payments/impl/GratuitComponent;->infoResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/payments/impl/GratuitComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUiOverlay()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
