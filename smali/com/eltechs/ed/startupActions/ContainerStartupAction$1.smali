.class final Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;
.super Ljava/util/HashMap;
.source "ContainerStartupAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/startupActions/ContainerStartupAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/eltechs/ed/startupActions/ContainerStartupAction$AbstractAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sget-object v0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->ID_DIVINE_DIVINITY_SETTINGS:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/startupActions/ContainerStartupAction$DivineDivinitySettings;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$DivineDivinitySettings;-><init>(Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->ID_MM7_SETTINGS:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM7Settings;

    invoke-direct {v1, v2}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM7Settings;-><init>(Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->ID_MM8_SETTINGS:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM8Settings;

    invoke-direct {v1, v2}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM8Settings;-><init>(Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
