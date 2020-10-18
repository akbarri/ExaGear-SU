.class Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;
.super Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleAdapter;
.source "WaitForXClientConnection.java"


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

.field final synthetic val$gat:Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;->val$gat:Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-direct {p0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public translatorExited(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;->val$gat:Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {p1}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->haveGuestApplications()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection$2;->this$0:Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;

    invoke-static {p1}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;->access$100(Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;)V

    :cond_0
    return-void
.end method
