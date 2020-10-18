.class Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;
.super Ljava/lang/Object;
.source "StartupActionsCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionDone(Lcom/eltechs/axs/configuration/startup/StartupAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

.field final synthetic val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    const-string v1, "actionDone(%s)\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$000(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->RUNNING:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    const-string v1, "actionDone() called with the current action in invalid state %s."

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    .line 130
    invoke-static {v4}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    move-result-object v4

    aput-object v4, v3, v5

    .line 129
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$200(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const-string v0, "An invalid action has reported the completion of itself."

    invoke-static {v2, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$300(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->NOT_YET_STARTED:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    invoke-static {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$102(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 137
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$400(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;->actionDone(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    return-void
.end method
