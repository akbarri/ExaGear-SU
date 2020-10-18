.class Lcom/eltechs/axs/AppRater$RateDialog$1;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/AppRater$RateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/AppRater$RateDialog;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/AppRater$RateDialog;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/eltechs/axs/AppRater$RateDialog$1;->this$1:Lcom/eltechs/axs/AppRater$RateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/eltechs/axs/AppRater$RateDialog$1;->this$1:Lcom/eltechs/axs/AppRater$RateDialog;

    iget-object p1, p1, Lcom/eltechs/axs/AppRater$RateDialog;->this$0:Lcom/eltechs/axs/AppRater;

    iget-object v0, p0, Lcom/eltechs/axs/AppRater$RateDialog$1;->this$1:Lcom/eltechs/axs/AppRater$RateDialog;

    iget-object v0, v0, Lcom/eltechs/axs/AppRater$RateDialog;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppRater;->startRateActivity(Landroid/content/Context;)V

    .line 60
    iget-object p1, p0, Lcom/eltechs/axs/AppRater$RateDialog$1;->this$1:Lcom/eltechs/axs/AppRater$RateDialog;

    iget-object p1, p1, Lcom/eltechs/axs/AppRater$RateDialog;->this$0:Lcom/eltechs/axs/AppRater;

    iget-object v0, p0, Lcom/eltechs/axs/AppRater$RateDialog$1;->this$1:Lcom/eltechs/axs/AppRater$RateDialog;

    iget-object v0, v0, Lcom/eltechs/axs/AppRater$RateDialog;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppRater;->dismissDialog(Landroid/content/Context;)V

    return-void
.end method
