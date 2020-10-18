.class public Lcom/eltechs/axs/activities/NotificationClickActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NotificationClickActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/NotificationClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "NOTIFICATION_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click on notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p0, p1}, Lcom/eltechs/axs/firebase/FAHelper;->logNotificationClickEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setRunAfterNotification(Z)V

    .line 28
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/AppConfig;->setNotificationName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/NotificationClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "RUN_AFTER_NOTIFICATION"

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_NAME"

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/NotificationClickActivity;->finish()V

    .line 35
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/NotificationClickActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
