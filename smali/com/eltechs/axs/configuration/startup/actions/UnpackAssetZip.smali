.class public Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "UnpackAssetZip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ExagearImageAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final assetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->applicationContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->assetFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 33
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;)V

    .line 47
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->assetFileName:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/eltechs/axs/helpers/ZipInstallerAssets;->installIfNecessary(Landroid/content/Context;Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
