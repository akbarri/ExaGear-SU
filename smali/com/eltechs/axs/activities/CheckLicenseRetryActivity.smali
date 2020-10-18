.class public Lcom/eltechs/axs/activities/CheckLicenseRetryActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "CheckLicenseRetryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget p1, Lcom/eltechs/axs/R$layout;->check_license_retry:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/CheckLicenseRetryActivity;->setContentView(I)V

    return-void
.end method

.method public onRetry(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/CheckLicenseRetryActivity;->setResult(I)V

    .line 25
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/CheckLicenseRetryActivity;->finish()V

    return-void
.end method
