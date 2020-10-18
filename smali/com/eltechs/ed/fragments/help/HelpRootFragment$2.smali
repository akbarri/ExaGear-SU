.class Lcom/eltechs/ed/fragments/help/HelpRootFragment$2;
.super Ljava/lang/Object;
.source "HelpRootFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/help/HelpRootFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/fragments/help/HelpRootFragment;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/help/HelpRootFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpRootFragment$2;->this$0:Lcom/eltechs/ed/fragments/help/HelpRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/eltechs/ed/fragments/help/HelpRootFragment$2;->this$0:Lcom/eltechs/ed/fragments/help/HelpRootFragment;

    invoke-virtual {p1}, Lcom/eltechs/ed/fragments/help/HelpRootFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/eltechs/ed/activities/EDHelpActivity;

    new-instance v0, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/help/HelpControlsFragment;-><init>()V

    invoke-virtual {p1, v0}, Lcom/eltechs/ed/activities/EDHelpActivity;->setHelpFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method
