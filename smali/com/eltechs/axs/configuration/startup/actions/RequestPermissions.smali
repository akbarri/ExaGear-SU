.class public Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;
.super Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.source "RequestPermissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field final requestCode:I

.field final thisActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->thisActivity:Landroid/app/Activity;

    .line 16
    iput p2, p0, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->requestCode:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->thisActivity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->requestUserInput()V

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->thisActivity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->requestCode:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->sendDone()V

    :goto_0
    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->sendDone()V

    return-void
.end method

.method public userInteractionFinished()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;->sendDone()V

    return-void
.end method
