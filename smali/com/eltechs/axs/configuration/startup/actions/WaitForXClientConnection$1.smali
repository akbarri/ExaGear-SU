.class Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$1;
.super Ljava/lang/Object;
.source "WaitForXClientConnection.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowContentModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;

    invoke-static {p1}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->access$000(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;)V

    return-void
.end method

.method public frontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method
