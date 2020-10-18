.class public Lcom/google/analytics/tracking/android/CampaignTrackingService;
.super Landroid/app/IntentService;
.source "CampaignTrackingService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CampaignIntentService"

    .line 21
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p0, p1}, Lcom/google/analytics/tracking/android/CampaignTrackingService;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "referrer"

    .line 32
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    const-string v0, "gaInstallData"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 38
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Error storing install campaign."

    .line 40
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
