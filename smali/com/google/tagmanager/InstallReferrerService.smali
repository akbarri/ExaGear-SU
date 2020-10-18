.class public final Lcom/google/tagmanager/InstallReferrerService;
.super Landroid/app/IntentService;
.source "InstallReferrerService.java"


# instance fields
.field contextOverride:Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field gaService:Lcom/google/analytics/tracking/android/CampaignTrackingService;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "InstallReferrerService"

    .line 28
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private forwardToGoogleAnalytics(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/tagmanager/InstallReferrerService;->gaService:Lcom/google/analytics/tracking/android/CampaignTrackingService;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/google/analytics/tracking/android/CampaignTrackingService;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/CampaignTrackingService;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/InstallReferrerService;->gaService:Lcom/google/analytics/tracking/android/CampaignTrackingService;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/InstallReferrerService;->gaService:Lcom/google/analytics/tracking/android/CampaignTrackingService;

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/CampaignTrackingService;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "referrer"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/google/tagmanager/InstallReferrerService;->contextOverride:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/tagmanager/InstallReferrerService;->contextOverride:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/InstallReferrerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    :goto_0
    invoke-static {v1, v0}, Lcom/google/tagmanager/InstallReferrerUtil;->saveInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v1, p1}, Lcom/google/tagmanager/InstallReferrerService;->forwardToGoogleAnalytics(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
