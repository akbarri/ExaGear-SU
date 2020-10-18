.class Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;
.super Ljava/lang/Object;
.source "ManageContainersFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

.field final synthetic val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    iput-object p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$800(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-interface {p1, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;->onManageContainersRunExplorer(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$800(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-interface {p1, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;->onManageContainerSettingsClick(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$800(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-interface {p1, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment$OnManageContainersActionListener;->onManageContainersInstallPackages(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    goto :goto_0

    .line 311
    :pswitch_3
    new-instance p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    iget-object v2, v2, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object v2, v2, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v3}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment;I)V

    new-array v2, v1, [Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v3, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 308
    :pswitch_4
    new-instance p1, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->this$2:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;

    iget-object v2, v2, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1;->this$1:Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;

    iget-object v2, v2, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-direct {p1, v2, v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;-><init>(Lcom/eltechs/ed/fragments/ManageContainersFragment;I)V

    new-array v2, v1, [Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v3, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContainersAdapter$1$1;->val$cont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09004c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
