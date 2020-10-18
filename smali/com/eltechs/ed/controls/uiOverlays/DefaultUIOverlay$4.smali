.class Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$4;
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

    .line 161
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    invoke-static {p1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->access$000(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;)Lcom/eltechs/ed/controls/Controls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/ed/controls/Controls;->createInfoDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$4;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    iget-object v0, v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->mHostActivity:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CONTROLS_INFO"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
