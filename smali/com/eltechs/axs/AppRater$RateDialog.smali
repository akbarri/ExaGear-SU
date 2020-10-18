.class Lcom/eltechs/axs/AppRater$RateDialog;
.super Landroid/app/AlertDialog;
.source "AppRater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/AppRater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateDialog"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/eltechs/axs/AppRater;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/AppRater;Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/eltechs/axs/AppRater$RateDialog;->this$0:Lcom/eltechs/axs/AppRater;

    .line 39
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/eltechs/axs/AppRater$RateDialog;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lcom/eltechs/axs/AppRater$RateDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/eltechs/axs/R$layout;->rate_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    .line 48
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/AppRater$RateDialog;->setContentView(Landroid/view/View;)V

    .line 53
    sget v0, Lcom/eltechs/axs/R$id;->rate_now:I

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    new-instance v1, Lcom/eltechs/axs/AppRater$RateDialog$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/AppRater$RateDialog$1;-><init>(Lcom/eltechs/axs/AppRater$RateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Lcom/eltechs/axs/R$id;->remind_me_later:I

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 68
    new-instance v0, Lcom/eltechs/axs/AppRater$RateDialog$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/AppRater$RateDialog$2;-><init>(Lcom/eltechs/axs/AppRater$RateDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
