.class Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;
.super Ljava/lang/Object;
.source "EDMainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/activities/EDMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/activities/EDMainActivity;


# direct methods
.method private constructor <init>(Lcom/eltechs/ed/activities/EDMainActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/ed/activities/EDMainActivity;Lcom/eltechs/ed/activities/EDMainActivity$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;-><init>(Lcom/eltechs/ed/activities/EDMainActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 152
    new-instance v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;-><init>()V

    .line 153
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "IS_START_MENU"

    .line 154
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "START_MENU"

    goto :goto_1

    .line 167
    :pswitch_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 168
    new-instance v0, Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;-><init>()V

    const-string v4, "MANAGE_CONTAINERS"

    goto :goto_1

    .line 161
    :pswitch_2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 162
    new-instance v0, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/ChooseRecipeFragment;-><init>()V

    const-string v4, "INSTALL_NEW"

    goto :goto_1

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    const-class v4, Lcom/eltechs/ed/activities/EDHelpActivity;

    invoke-static {v0, v4}, Lcom/eltechs/ed/activities/EDMainActivity;->access$200(Lcom/eltechs/ed/activities/EDMainActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 141
    :pswitch_4
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 142
    new-instance v0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;-><init>()V

    .line 143
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "IS_START_MENU"

    .line 144
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "DESKTOP"

    goto :goto_1

    :goto_0
    move-object v0, v1

    move-object v4, v0

    :goto_1
    if-eqz v0, :cond_2

    .line 180
    iget-object v5, p0, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-virtual {v5}, Lcom/eltechs/ed/activities/EDMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 183
    :goto_2
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 185
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 189
    :cond_0
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v5, 0x7f090070

    .line 190
    invoke-virtual {v2, v5, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1003

    .line 191
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090071

    if-eq p1, v0, :cond_1

    .line 194
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move v2, v3

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity$NavigationItemSelectedListener;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-static {p1}, Lcom/eltechs/ed/activities/EDMainActivity;->access$300(Lcom/eltechs/ed/activities/EDMainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090071
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
