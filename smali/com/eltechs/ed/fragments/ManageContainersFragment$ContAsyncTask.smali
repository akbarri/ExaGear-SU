.class Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;
.super Landroid/os/AsyncTask;
.source "ManageContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ManageContainersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/eltechs/ed/guestContainers/GuestContainer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:I

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/fragments/ManageContainersFragment;I)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    iput p2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->mAction:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->doInBackground([Lcom/eltechs/ed/guestContainers/GuestContainer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/eltechs/ed/guestContainers/GuestContainer;)Ljava/lang/Void;
    .locals 2

    .line 221
    iget v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->mAction:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 233
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    goto :goto_0

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$400(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->deleteContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$400(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->cloneContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$400(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->createContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$500(Lcom/eltechs/ed/fragments/ManageContainersFragment;)V

    .line 243
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$200(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$200(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$600(Lcom/eltechs/ed/fragments/ManageContainersFragment;Landroid/app/ProgressDialog;)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$002(Lcom/eltechs/ed/fragments/ManageContainersFragment;Z)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$002(Lcom/eltechs/ed/fragments/ManageContainersFragment;Z)Z

    .line 200
    iget v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->mAction:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 212
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    const-string v1, "Deleting container..."

    invoke-static {v0, v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$102(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    const-string v1, "Cloning container..."

    invoke-static {v0, v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$102(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    const-string v1, "Creating container..."

    invoke-static {v0, v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$102(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    iget-object v2, p0, Lcom/eltechs/ed/fragments/ManageContainersFragment$ContAsyncTask;->this$0:Lcom/eltechs/ed/fragments/ManageContainersFragment;

    invoke-static {v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$100(Lcom/eltechs/ed/fragments/ManageContainersFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$300(Lcom/eltechs/ed/fragments/ManageContainersFragment;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/ed/fragments/ManageContainersFragment;->access$202(Lcom/eltechs/ed/fragments/ManageContainersFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
