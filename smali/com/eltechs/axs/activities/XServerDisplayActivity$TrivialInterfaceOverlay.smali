.class Lcom/eltechs/axs/activities/XServerDisplayActivity$TrivialInterfaceOverlay;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/XServerDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrivialInterfaceOverlay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity$1;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/eltechs/axs/activities/XServerDisplayActivity$TrivialInterfaceOverlay;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)Landroid/view/View;
    .locals 1

    .line 352
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {p1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method

.method public detach()V
    .locals 0

    return-void
.end method
