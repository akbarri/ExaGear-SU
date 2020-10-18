.class Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;
.super Ljava/lang/Object;
.source "StartupActionsCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionFailed(Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

.field final synthetic val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    const-string v1, "actionFailed(%s, \'%s\')\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$description:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$000(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->RUNNING:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    if-ne v0, v1, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const-string v1, "actionFailed() called with the current action in invalid state %s."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    .line 151
    invoke-static {v3}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    move-result-object v3

    aput-object v3, v2, v4

    .line 150
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$200(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v4, v5

    :cond_1
    const-string v0, "An invalid action has reported a failure in itself."

    invoke-static {v4, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$300(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->NOT_YET_STARTED:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    invoke-static {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$102(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 158
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$400(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$action:Lcom/eltechs/axs/configuration/startup/StartupAction;

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;->val$description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;->actionFailed(Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V

    return-void
.end method
