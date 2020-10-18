.class Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService$1;
.super Ljava/lang/Object;
.source "StartEnvironmentService.java"

# interfaces
.implements Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;

    const-string v1, "Failed to start the environment emulation service."

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public serviceStarted()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;->sendDone()V

    return-void
.end method
