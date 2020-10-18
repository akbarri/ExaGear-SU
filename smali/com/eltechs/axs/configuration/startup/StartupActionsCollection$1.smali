.class Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$1;
.super Ljava/lang/Object;
.source "StartupActionsCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->runAction()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

.field final synthetic val$cur:Lcom/eltechs/axs/configuration/startup/StartupAction;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$1;->this$0:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$1;->val$cur:Lcom/eltechs/axs/configuration/startup/StartupAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$1;->val$cur:Lcom/eltechs/axs/configuration/startup/StartupAction;

    invoke-interface {v0}, Lcom/eltechs/axs/configuration/startup/StartupAction;->execute()V

    return-void
.end method
