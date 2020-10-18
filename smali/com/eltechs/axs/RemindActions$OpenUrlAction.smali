.class Lcom/eltechs/axs/RemindActions$OpenUrlAction;
.super Lcom/eltechs/axs/RemindActions$Action;
.source "RemindActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/RemindActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenUrlAction"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lcom/eltechs/axs/RemindActions$Action;-><init>(Lcom/eltechs/axs/RemindActions$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/RemindActions$1;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/eltechs/axs/RemindActions$OpenUrlAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/eltechs/axs/RemindActions$OpenUrlAction;->notifTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/eltechs/axs/RemindActions$OpenUrlAction;->notifText:Ljava/lang/String;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$OpenUrlAction;->notifName:Ljava/lang/String;

    iget-object v3, p0, Lcom/eltechs/axs/RemindActions$OpenUrlAction;->url:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/eltechs/axs/helpers/NotificationHelper;->displayOpenUrlNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/RemindActions$OpenUrlAction;->addToCompleted(Landroid/content/Context;)V

    return-void
.end method

.method public parseParams(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "url"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/RemindActions$OpenUrlAction;->url:Ljava/lang/String;

    return-void
.end method
