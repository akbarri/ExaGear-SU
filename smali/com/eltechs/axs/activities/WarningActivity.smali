.class public Lcom/eltechs/axs/activities/WarningActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "WarningActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lcom/eltechs/axs/R$layout;->warning:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/WarningActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/WarningActivity;->getExtraParameter()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 27
    sget v0, Lcom/eltechs/axs/R$id;->warn_text_view:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOKClicked(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/WarningActivity;->finish()V

    return-void
.end method
