.class public Lcom/eltechs/ed/activities/EDMainActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "EDMainActivity.java"

# interfaces
.implements Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;
.implements Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;
.implements Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;
.implements Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;
.implements Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;
.implements Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;,
        Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;",
        "Lcom/eltechs/ed/fragments/ChooseRecipeFragment$OnRecipeSelectedListener;",
        "Lcom/eltechs/ed/fragments/ChooseFileFragment$OnFileSelectedListener;",
        "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$OnXDGLinkSelectedListener;",
        "Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;",
        "Lcom/eltechs/ed/fragments/ChoosePackagesDFragment$OnPackagesSelectedListener;",
        "Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;"
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG_CHOOSE_FILE:Ljava/lang/String; = "CHOOSE_FILE"

.field private static final FRAGMENT_TAG_CONTAINER_PROP:Ljava/lang/String; = "CONTAINER_PROP"

.field private static final FRAGMENT_TAG_DESKTOP:Ljava/lang/String; = "DESKTOP"

.field private static final FRAGMENT_TAG_INSTALL_NEW:Ljava/lang/String; = "INSTALL_NEW"

.field private static final FRAGMENT_TAG_MANAGE_CONTAINERS:Ljava/lang/String; = "MANAGE_CONTAINERS"

.field private static final FRAGMENT_TAG_START_MENU:Ljava/lang/String; = "START_MENU"

.field private static final ON_START_ACTION_SHOW_MANAGE_CONTAINERS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EDMainActivity"

.field private static final mUserAreaDir:Ljava/io/File;


# instance fields
.field private mAppCfg:Lcom/eltechs/axs/AppConfig;

.field private mChoosenCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field private mChoosenXDGLink:Lcom/eltechs/ed/XDGLink;

.field private mChosenRecipe:Lcom/eltechs/ed/InstallRecipe;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mIsHomeActionBack:Z

.field private mNavigationView:Landroid/support/design/widget/NavigationView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getMainSDCard()Ljava/io/File;

    move-result-object v1

    const-string v2, "Exagear"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/eltechs/ed/activities/EDMainActivity;->mUserAreaDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    .line 62
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mAppCfg:Lcom/eltechs/axs/AppConfig;

    return-void
.end method

.method static synthetic access$200(Lcom/eltechs/ed/activities/EDMainActivity;Ljava/lang/Class;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eltechs/ed/activities/EDMainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eltechs/ed/activities/EDMainActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->changeUIByCurFragment()V

    return-void
.end method

.method private changeUIByCurFragment()V
    .locals 6

    .line 220
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, v1}, Lcom/eltechs/ed/activities/EDMainActivity;->setHomeIsActionBack(Z)V

    return-void

    :cond_0
    const-string v2, "CONTAINER_PROP"

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "CHOOSE_FILE"

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0, v1}, Lcom/eltechs/ed/activities/EDMainActivity;->setHomeIsActionBack(Z)V

    goto :goto_1

    .line 233
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/eltechs/ed/activities/EDMainActivity;->setHomeIsActionBack(Z)V

    :goto_1
    const/4 v2, -0x1

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7864e404

    if-eq v4, v5, :cond_6

    const v1, -0x3f1aacc4

    if-eq v4, v1, :cond_5

    const v1, -0x1d0b6cd4

    if-eq v4, v1, :cond_4

    const v1, 0x2ad8bc

    if-eq v4, v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "INSTALL_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    const-string v1, "MANAGE_CONTAINERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    goto :goto_3

    :cond_5
    const-string v1, "START_MENU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v3

    goto :goto_3

    :cond_6
    const-string v3, "DESKTOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v2

    :goto_3
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setCheckedItem(I)V

    goto :goto_4

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setCheckedItem(I)V

    goto :goto_4

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setCheckedItem(I)V

    goto :goto_4

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setCheckedItem(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setHomeIsActionBack(Z)V
    .locals 1

    .line 211
    iput-boolean p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mIsHomeActionBack:Z

    .line 212
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iget-boolean v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mIsHomeActionBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f0800a8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    return-void
.end method

.method private startXDGLink(Lcom/eltechs/ed/XDGLink;)V
    .locals 2

    .line 355
    new-instance v0, Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;

    invoke-direct {v0, p1}, Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;-><init>(Lcom/eltechs/ed/XDGLink;)V

    .line 356
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v1, Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-direct {v1, v0}, Lcom/eltechs/ed/startupActions/StartGuest;-><init>(Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;)V

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 358
    sget-object p1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method public onContRunGuideRes(Z)V
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChoosenXDGLink:Lcom/eltechs/ed/XDGLink;

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChoosenXDGLink:Lcom/eltechs/ed/XDGLink;

    invoke-direct {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->startXDGLink(Lcom/eltechs/ed/XDGLink;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0035

    .line 78
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/activities/EDMainActivity;->setContentView(I)V

    const v0, 0x7f09006f

    .line 80
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/activities/EDMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f090076

    .line 82
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/activities/EDMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    .line 83
    new-instance v0, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;-><init>(Lcom/eltechs/ed/activities/EDMainActivity;Lcom/eltechs/ed/activities/EDMainActivity$1;)V

    .line 84
    iget-object v2, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const v2, 0x7f090077

    .line 86
    invoke-virtual {p0, v2}, Lcom/eltechs/ed/activities/EDMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 87
    invoke-virtual {p0, v2}, Lcom/eltechs/ed/activities/EDMainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 89
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f0800a8

    .line 91
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 93
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;

    invoke-direct {v3, p0, v1}, Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;-><init>(Lcom/eltechs/ed/activities/EDMainActivity;Lcom/eltechs/ed/activities/EDMainActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    if-nez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mAppCfg:Lcom/eltechs/axs/AppConfig;

    invoke-virtual {p1}, Lcom/eltechs/axs/AppConfig;->getEDMainOnStartAction()Ljava/lang/Integer;

    move-result-object p1

    .line 98
    iget-object v1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f090071

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f090074

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mAppCfg:Lcom/eltechs/axs/AppConfig;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppConfig;->setEDMainOnStartAction(Ljava/lang/Integer;)V

    const-wide/16 v0, 0x4e2

    .line 107
    new-instance p1, Lcom/eltechs/ed/activities/EDMainActivity$1;

    invoke-direct {p1, p0}, Lcom/eltechs/ed/activities/EDMainActivity$1;-><init>(Lcom/eltechs/ed/activities/EDMainActivity;)V

    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/helpers/UiThread;->postDelayed(JLjava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onFileSelected(Ljava/lang/String;)V
    .locals 3

    .line 316
    new-instance v0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;

    iget-object v1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChosenRecipe:Lcom/eltechs/ed/InstallRecipe;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/lang/String;Lcom/eltechs/ed/InstallRecipe;)V

    .line 317
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v1, Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-direct {v1, v0}, Lcom/eltechs/ed/startupActions/StartGuest;-><init>(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)V

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 319
    sget-object p1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method

.method public onManageContainerSettingsClick(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 5

    .line 399
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChoosenCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 402
    new-instance v0, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;-><init>()V

    .line 403
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CONT_ID"

    .line 404
    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v1, "CONTAINER_PROP"

    const v2, 0x7f090070

    .line 409
    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1003

    .line 410
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 412
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onManageContainersInstallPackages(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 2

    .line 377
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChoosenCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 378
    new-instance p1, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;

    invoke-direct {p1}, Lcom/eltechs/ed/fragments/ChoosePackagesDFragment;-><init>()V

    .line 379
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CHOOSE_PACKAGES"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onManageContainersRunExplorer(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 2

    .line 366
    new-instance v0, Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;

    invoke-direct {v0, p1}, Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    .line 367
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v1, Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-direct {v1, v0}, Lcom/eltechs/ed/startupActions/StartGuest;-><init>(Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;)V

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 369
    sget-object p1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 286
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 276
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mIsHomeActionBack:Z

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPackagesSelected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/ContainerPackage;",
            ">;)V"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;

    iget-object v1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChoosenCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {v0, v1, p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/util/List;)V

    .line 388
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v1, Lcom/eltechs/ed/startupActions/StartGuest;

    invoke-direct {v1, v0}, Lcom/eltechs/ed/startupActions/StartGuest;-><init>(Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;)V

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 390
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mAppCfg:Lcom/eltechs/axs/AppConfig;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppConfig;->setEDMainOnStartAction(Ljava/lang/Integer;)V

    .line 391
    sget-object p1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->signalUserInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method

.method public onRecipeSelected(Lcom/eltechs/ed/InstallRecipe;)V
    .locals 3

    .line 294
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChosenRecipe:Lcom/eltechs/ed/InstallRecipe;

    .line 297
    new-instance p1, Lcom/eltechs/ed/fragments/ChooseFileFragment;

    invoke-direct {p1}, Lcom/eltechs/ed/fragments/ChooseFileFragment;-><init>()V

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ROOT_PATH"

    .line 299
    sget-object v2, Lcom/eltechs/ed/activities/EDMainActivity;->mUserAreaDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DOWNLOAD_URL"

    .line 300
    iget-object v2, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChosenRecipe:Lcom/eltechs/ed/InstallRecipe;

    invoke-virtual {v2}, Lcom/eltechs/ed/InstallRecipe;->getDownloadURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "CHOOSE_FILE"

    const v2, 0x7f090070

    .line 305
    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 p1, 0x1003

    .line 306
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 307
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 308
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->changeUIByCurFragment()V

    return-void
.end method

.method public onXDGLinkSelected(Lcom/eltechs/ed/XDGLink;)V
    .locals 2

    .line 327
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity;->mChoosenXDGLink:Lcom/eltechs/ed/XDGLink;

    .line 329
    iget-object v0, p1, Lcom/eltechs/ed/XDGLink;->guestCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    if-eqz v0, :cond_0

    .line 330
    iget-object v1, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuide()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuide()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuideShown()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 332
    invoke-static {v0, p1}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->createDialog(Lcom/eltechs/ed/guestContainers/GuestContainer;Z)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CONT_RUN_GUIDE"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity;->startXDGLink(Lcom/eltechs/ed/XDGLink;)V

    :goto_0
    return-void
.end method
