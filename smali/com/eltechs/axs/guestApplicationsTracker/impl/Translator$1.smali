.class Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator$1;
.super Ljava/lang/Object;
.source "Translator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->scheduleDestructionIfNoConnectionIsMade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator$1;->this$0:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator$1;->this$0:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    invoke-static {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->access$000(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator$1;->this$0:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->killTranslator(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V

    return-void
.end method
