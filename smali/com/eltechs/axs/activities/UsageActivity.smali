.class public Lcom/eltechs/axs/activities/UsageActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "UsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase;",
        ">;"
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

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/UsageActivity;->requestWindowFeature(I)Z

    const/4 p1, 0x2

    .line 26
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/UsageActivity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/UsageActivity;->getExtraParameter()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 30
    sget v0, Lcom/eltechs/axs/R$layout;->tutorial_dialog:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/UsageActivity;->setContentView(I)V

    .line 32
    sget v0, Lcom/eltechs/axs/R$id;->tutorial_pic:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/UsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onOKClicked(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/UsageActivity;->finish()V

    return-void
.end method
