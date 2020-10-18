.class Lcom/eltechs/axs/activities/StartupActivity$1;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/StartupActivity;->updateProgressPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/StartupActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/StartupActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/eltechs/axs/activities/StartupActivity$1;->this$0:Lcom/eltechs/axs/activities/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity$1;->this$0:Lcom/eltechs/axs/activities/StartupActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/StartupActivity;->access$000(Lcom/eltechs/axs/activities/StartupActivity;)V

    return-void
.end method
