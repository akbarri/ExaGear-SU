.class Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;
.super Ljava/lang/Object;
.source "ContainerRunGuideDFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->access$200(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object p1

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunGuideShown(Z)V

    .line 101
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;

    invoke-virtual {p1}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->dismiss()V

    .line 102
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->access$000(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;->this$0:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;

    invoke-static {p1}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->access$100(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;->onContRunGuideRes(Z)V

    :cond_0
    return-void
.end method
