.class public Lcom/eltechs/ed/activities/EDHelpActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "EDHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0039

    .line 22
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/activities/EDHelpActivity;->setContentView(I)V

    const v0, 0x7f09006d

    .line 24
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/activities/EDHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 25
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/activities/EDHelpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 27
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDHelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f08009e

    .line 29
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/eltechs/ed/fragments/help/HelpRootFragment;

    invoke-direct {p1}, Lcom/eltechs/ed/fragments/help/HelpRootFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/activities/EDHelpActivity;->setHelpFragment(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 48
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDHelpActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public setHelpFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDHelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09006c

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v1, 0x1003

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    instance-of p1, p1, Lcom/eltechs/ed/fragments/help/HelpRootFragment;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
