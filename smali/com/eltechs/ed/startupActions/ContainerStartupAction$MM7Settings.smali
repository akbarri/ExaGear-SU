.class Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM7Settings;
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
    name = "MM7Settings"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/ed/startupActions/ContainerStartupAction$1;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/eltechs/ed/startupActions/ContainerStartupAction$MM7Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 4

    .line 80
    new-instance v0, Lcom/eltechs/ed/WineRegistryEditor;

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mWinePrefixPath:Ljava/lang/String;

    const-string v2, "system.reg"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/eltechs/ed/WineRegistryEditor;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string p1, "Software\\New World Computing\\Might and Magic VII\\1.0"

    .line 84
    invoke-virtual {v0}, Lcom/eltechs/ed/WineRegistryEditor;->read()V

    const-string v1, "Use D3D"

    .line 85
    invoke-virtual {v0, p1, v1}, Lcom/eltechs/ed/WineRegistryEditor;->getDwordParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Use D3D"

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/eltechs/ed/WineRegistryEditor;->setDwordParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "startinwindow"

    .line 90
    invoke-virtual {v0, p1, v1}, Lcom/eltechs/ed/WineRegistryEditor;->getDwordParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "startinwindow"

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/eltechs/ed/WineRegistryEditor;->setDwordParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/eltechs/ed/WineRegistryEditor;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
