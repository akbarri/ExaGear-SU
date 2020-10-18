.class public Lcom/eltechs/ed/startupActions/ContainerStartupAction;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "ContainerStartupAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM8Settings;,
        Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM7Settings;,
        Lcom/eltechs/ed/startupActions/ContainerStartupAction$DivineDivinitySettings;,
        Lcom/eltechs/ed/startupActions/ContainerStartupAction$AbstractAction;
    }
.end annotation


# static fields
.field public static ID_DIVINE_DIVINITY_SETTINGS:Ljava/lang/String; = "divine_divinity_settings"

.field public static ID_MM7_SETTINGS:Ljava/lang/String; = "mm7_settings"

.field public static ID_MM8_SETTINGS:Ljava/lang/String; = "mm8_settings"

.field private static final actionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/eltechs/ed/startupActions/ContainerStartupAction$AbstractAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field private mIdList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;

    invoke-direct {v0}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;-><init>()V

    sput-object v0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->actionsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 40
    iput-object p2, p0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->mIdList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->mIdList:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 50
    sget-object v4, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->actionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->actionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/ed/startupActions/ContainerStartupAction$AbstractAction;

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-interface {v3, v4}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$AbstractAction;->run(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->sendDone()V

    return-void
.end method
