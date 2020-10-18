.class final Lcom/eltechs/axs/RateAppDialog$2;
.super Ljava/lang/Object;
.source "RateAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/RateAppDialog;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cfg:Lcom/eltechs/axs/AppConfig;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/AppConfig;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eltechs/axs/RateAppDialog$2;->val$cfg:Lcom/eltechs/axs/AppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/eltechs/axs/RateAppDialog$2;->val$cfg:Lcom/eltechs/axs/AppConfig;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/AppConfig;->setRateAppDontShowAgain(Z)V

    return-void
.end method
