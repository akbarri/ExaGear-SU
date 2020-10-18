.class Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;
.super Ljava/lang/Object;
.source "SelectExecutableFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->installUnsupportedFileButtonListener(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

.field final synthetic val$file:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    iput-object p2, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;->val$file:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 397
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;->val$file:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->setSelectedExecutableFile(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    .line 398
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    const-class v0, Lcom/eltechs/axs/activities/AdvancedRunOptions;

    const/16 v1, 0x2712

    invoke-virtual {p1, v1, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->startActivityForResult(ILjava/lang/Class;)V

    return-void
.end method
