.class public Lcom/eltechs/axs/helpers/ZipInstallerObb;
.super Ljava/lang/Object;
.source "ZipInstallerObb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;
    }
.end annotation


# instance fields
.field private final callbacks:Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

.field private final context:Landroid/content/Context;

.field private final exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

.field private foundObbVersion:I

.field private final isMain:Z

.field private final keepOldFiles:[Ljava/lang/String;

.field private final mayTakeFromSdcard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;[Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->context:Landroid/content/Context;

    .line 58
    iput-boolean p2, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->isMain:Z

    .line 59
    iput-boolean p3, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->mayTakeFromSdcard:Z

    .line 60
    iput-object p4, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    .line 61
    iput-object p5, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->callbacks:Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

    .line 62
    iput-object p6, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->keepOldFiles:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/helpers/ZipInstallerObb;)Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->callbacks:Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/helpers/ZipInstallerObb;)[Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->keepOldFiles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/helpers/ZipInstallerObb;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->createFileWithObbVersion(Ljava/io/File;)V

    return-void
.end method

.method private checkObbUnpackNeed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getImageVersion()I

    move-result v0

    iget v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private createFileWithObbVersion(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/File;

    const-string v1, ".exagear/.img_version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 108
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v0, "%d\n"

    const/4 v1, 0x1

    .line 109
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V

    return-void
.end method

.method private findObbFile()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    iput v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    .line 81
    :goto_0
    iget v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    if-ltz v1, :cond_3

    const-string v1, "%s.%d.%s.obb"

    const/4 v2, 0x3

    .line 83
    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->isMain:Z

    if-eqz v3, :cond_0

    const-string v3, "main"

    goto :goto_1

    :cond_0
    const-string v3, "patch"

    :goto_1
    aput-object v3, v2, v0

    iget v3, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->mayTakeFromSdcard:Z

    if-eqz v3, :cond_1

    .line 88
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getMainSDCard()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    .line 94
    :cond_2
    iget v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->foundObbVersion:I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public installImageFromObbIfNeeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->findObbFile()Ljava/io/File;

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->checkObbUnpackNeed()Z

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->exagearImage:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v2}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v2

    if-nez v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->callbacks:Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

    invoke-interface {v0, v2}, Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;->unpackingCompleted(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb;->callbacks:Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

    invoke-interface {v0}, Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;->noObbFound()V

    return-void

    .line 148
    :cond_1
    new-instance v1, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerObb;Ljava/io/File;Ljava/io/File;)V

    const/4 v0, 0x0

    .line 235
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
