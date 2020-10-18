.class Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;
.super Ljava/lang/Object;
.source "StartupActionsCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

.field final synthetic val$activity:Ljava/lang/Class;

.field final synthetic val$parameters:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->val$activity:Ljava/lang/Class;

    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->val$parameters:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->RUNNING:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "User input has been requested in state %s; can do it only in RUNNING state."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    .line 206
    invoke-static {v4}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    move-result-object v4

    aput-object v4, v3, v2

    .line 204
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$200(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v0

    instance-of v0, v0, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;

    const-string v1, "Only interactive startup actions can request user input."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->AWAITING_RESPONSE:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    invoke-static {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$102(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 212
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->access$500(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/actions/UserInteractionRequestListener;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->val$activity:Ljava/lang/Class;

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;->val$parameters:Ljava/io/Serializable;

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/actions/UserInteractionRequestListener;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V

    return-void
.end method
