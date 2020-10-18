.class abstract Lcom/eltechs/axs/RemindActions$Action;
.super Ljava/lang/Object;
.source "RemindActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/RemindActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Action"
.end annotation


# instance fields
.field public effectivePeriodBegin:Ljava/lang/Long;

.field public effectivePeriodEnd:Ljava/lang/Long;

.field public id:Ljava/lang/String;

.field public notifName:Ljava/lang/String;

.field public notifText:Ljava/lang/String;

.field public notifTitle:Ljava/lang/String;

.field public periodBegin:Ljava/lang/Long;

.field public periodEnd:Ljava/lang/Long;

.field public startDate:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/RemindActions$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/eltechs/axs/RemindActions$Action;-><init>()V

    return-void
.end method


# virtual methods
.method public addToCompleted(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-static {p1}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/eltechs/axs/AppConfig;->getComlpetedRemindActions()Ljava/util/Set;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/eltechs/axs/RemindActions$Action;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppConfig;->setCompletedRemindActions(Ljava/util/Set;)V

    return-void
.end method

.method public abstract execute(Landroid/content/Context;)V
.end method

.method public parseParams(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-void
.end method
