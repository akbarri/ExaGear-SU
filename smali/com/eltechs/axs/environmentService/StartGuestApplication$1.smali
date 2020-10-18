.class Lcom/eltechs/axs/environmentService/StartGuestApplication$1;
.super Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleAdapter;
.source "StartGuestApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/environmentService/StartGuestApplication;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/environmentService/StartGuestApplication;

.field final synthetic val$gat:Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/environmentService/StartGuestApplication;Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication$1;->this$0:Lcom/eltechs/axs/environmentService/StartGuestApplication;

    iput-object p2, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication$1;->val$gat:Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-direct {p0}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public translatorExited(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication$1;->val$gat:Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {p1}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->haveGuestApplications()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication$1;->this$0:Lcom/eltechs/axs/environmentService/StartGuestApplication;

    invoke-static {p1}, Lcom/eltechs/axs/environmentService/StartGuestApplication;->access$000(Lcom/eltechs/axs/environmentService/StartGuestApplication;)Z

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication(Z)V

    :cond_0
    return-void
.end method
