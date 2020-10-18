.class Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;
.super Ljava/lang/Object;
.source "SelectExecutableFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->installMoreLessOptionButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    iget-object v0, v0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$200(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$202(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;Z)Z

    .line 414
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;->this$1:Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;

    iget-object p1, p1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$300(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)V

    return-void
.end method
