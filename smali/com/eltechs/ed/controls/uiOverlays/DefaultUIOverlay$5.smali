.class Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->createToolbar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 175
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Confirm Exit"

    .line 177
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0800ad

    .line 178
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v0, "Are you sure you want to exit?"

    .line 179
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v0, "OK"

    .line 180
    new-instance v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5$1;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5$1;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v0, "Cancel"

    .line 188
    new-instance v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5$2;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5$2;-><init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
