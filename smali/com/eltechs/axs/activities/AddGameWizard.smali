.class public Lcom/eltechs/axs/activities/AddGameWizard;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "AddGameWizard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;",
        ">",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AddGameWizard;->requestWindowFeature(I)Z

    .line 27
    sget p1, Lcom/eltechs/axs/R$layout;->add_game_wizard:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AddGameWizard;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AddGameWizard;->resizeRootViewToStandardDialogueSize()V

    .line 30
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AddGameWizard;->getExtraParameter()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 33
    sget p1, Lcom/eltechs/axs/R$string;->agw_basic_instruction:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AddGameWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    sget v0, Lcom/eltechs/axs/R$id;->agw_text_view:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AddGameWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
