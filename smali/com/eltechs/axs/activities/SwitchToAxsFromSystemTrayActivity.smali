.class public Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;
.super Lcom/eltechs/axs/activities/AxsActivity;
.source "SwitchToAxsFromSystemTrayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AxsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;->finish()V

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getAppLaunchActivityClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 31
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;->finish()V

    .line 34
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/SwitchToAxsFromSystemTrayActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
