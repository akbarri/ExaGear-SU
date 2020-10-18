.class Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM8Settings;
.super Ljava/lang/Object;
.source "ContainerStartupAction.java"

# interfaces
.implements Lcom/eltechs/ed/startupActions/ContainerStartupAction$AbstractAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/startupActions/ContainerStartupAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MM8Settings"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM8Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 4

    .line 111
    new-instance v0, Lcom/eltechs/ed/WineRegistryEditor;

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mWinePrefixPath:Ljava/lang/String;

    const-string v2, "system.reg"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/eltechs/ed/WineRegistryEditor;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string p1, "Software\\New World Computing\\Might and Magic Day of the Destroyer\\1.0"

    .line 115
    invoke-virtual {v0}, Lcom/eltechs/ed/WineRegistryEditor;->read()V

    const-string v1, "Use D3D"

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/eltechs/ed/WineRegistryEditor;->getDwordParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Use D3D"

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/eltechs/ed/WineRegistryEditor;->setDwordParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "startinwindow"

    .line 121
    invoke-virtual {v0, p1, v1}, Lcom/eltechs/ed/WineRegistryEditor;->getDwordParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "startinwindow"

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/eltechs/ed/WineRegistryEditor;->setDwordParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    :cond_3
    invoke-virtual {v0}, Lcom/eltechs/ed/WineRegistryEditor;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
