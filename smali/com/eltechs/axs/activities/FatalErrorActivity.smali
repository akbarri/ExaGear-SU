.class public Lcom/eltechs/axs/activities/FatalErrorActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "FatalErrorActivity.java"


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

    .line 21
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method

.method public static showFatalError(Ljava/lang/String;)V
    .locals 5

    .line 25
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    .line 27
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object v0

    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/eltechs/axs/activities/FatalErrorActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v2, 0x10000000

    .line 34
    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-static {v3, p0}, Lcom/eltechs/axs/activities/FatalErrorActivity;->writeExtraParameter(Landroid/content/Intent;Ljava/io/Serializable;)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->finish()V

    .line 58
    invoke-static {}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/eltechs/axs/R$layout;->fatal_error:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/FatalErrorActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/FatalErrorActivity;->getExtraParameter()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 48
    sget v0, Lcom/eltechs/axs/R$id;->fe_text_view:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/FatalErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
