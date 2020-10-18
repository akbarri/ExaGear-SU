.class public Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;
.super Ljava/lang/Object;
.source "PurchasableComponentGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/payments/PurchasableComponentGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteSubscription"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final skuName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;->packageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;->skuName:Ljava/lang/String;

    return-void
.end method
