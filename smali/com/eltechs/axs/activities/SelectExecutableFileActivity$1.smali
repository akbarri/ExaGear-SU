.class Lcom/eltechs/axs/activities/SelectExecutableFileActivity$1;
.super Ljava/lang/Object;
.source "SelectExecutableFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->processRemindActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$1;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$1;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    const-class v0, Lcom/eltechs/axs/activities/BuyPromoActivity;

    const/16 v1, 0x2715

    invoke-virtual {p1, v1, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->startActivityForResult(ILjava/lang/Class;)V

    return-void
.end method
