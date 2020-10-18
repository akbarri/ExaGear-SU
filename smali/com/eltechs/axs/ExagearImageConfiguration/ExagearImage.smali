.class public Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;
.super Ljava/lang/Object;
.source "ExagearImage.java"


# instance fields
.field private final path:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    return-void
.end method

.method public static find(Landroid/content/Context;Ljava/lang/String;Z)Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;
    .locals 0

    if-eqz p2, :cond_0

    .line 31
    new-instance p2, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-static {p0, p1}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getInternalFilesDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;-><init>(Ljava/io/File;)V

    return-object p2

    .line 34
    :cond_0
    new-instance p2, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-static {p0, p1}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getExternalFilesDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;-><init>(Ljava/io/File;)V

    return-object p2
.end method


# virtual methods
.method public getConfigurationDir()Ljava/io/File;
    .locals 3

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    const-string v2, ".exagear"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getImageVersion()I
    .locals 3

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    const-string v2, ".exagear/.img_version"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/FileHelpers;->readAsLines(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    return-object v0
.end method

.method public getVpathsList()Ljava/io/File;
    .locals 3

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    const-string v2, ".exagear/vpaths-list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->path:Ljava/io/File;

    const-string v1, ".exagear/.img_version"

    .line 46
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->doesFileExist(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
