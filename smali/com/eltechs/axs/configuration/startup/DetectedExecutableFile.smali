.class public Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;
.super Ljava/lang/Object;
.source "DetectedExecutableFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private controlsId:Ljava/lang/String;

.field private controlsInfoDialog:Landroid/support/v4/app/DialogFragment;

.field private final defaultEnvironmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

.field private final defaultUiOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

.field private final description:Ljava/lang/String;

.field private final environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

.field private final fileName:Ljava/lang/String;

.field private final furtherStartupActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/StartupAction<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field

.field private final icon:Landroid/graphics/Bitmap;

.field private final parentDir:Ljava/io/File;

.field private final recommendedCustomizationPackage:Lcom/eltechs/axs/payments/PurchasableComponent;

.field private userSelectedCustomizationPackage:Lcom/eltechs/axs/payments/PurchasableComponent;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;Ljava/lang/String;Landroid/support/v4/app/DialogFragment;)V
    .locals 9

    .line 74
    new-instance v1, Ljava/io/File;

    const-string v0, "dummyParentDir"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "dummyFileName"

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/eltechs/axs/payments/PurchasableComponent;Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;Ljava/util/List;)V

    .line 82
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->controlsId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->controlsInfoDialog:Landroid/support/v4/app/DialogFragment;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/eltechs/axs/payments/PurchasableComponent;Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/payments/PurchasableComponent;",
            "Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;",
            "Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/StartupAction<",
            "TStateClass;>;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->parentDir:Ljava/io/File;

    .line 49
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->fileName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->icon:Landroid/graphics/Bitmap;

    .line 51
    iput-object p4, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->description:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->defaultUiOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    .line 53
    iput-object p5, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->recommendedCustomizationPackage:Lcom/eltechs/axs/payments/PurchasableComponent;

    if-eqz p5, :cond_0

    .line 56
    invoke-interface {p5}, Lcom/eltechs/axs/payments/PurchasableComponent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->setDefaultControlsName(Ljava/lang/String;)V

    .line 58
    :cond_0
    iput-object p7, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    .line 60
    new-instance p1, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    invoke-direct {p1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->defaultEnvironmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    .line 61
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->defaultEnvironmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    invoke-virtual {p1, p7}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->copyFrom(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V

    .line 63
    iput-object p8, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->furtherStartupActions:Ljava/util/List;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->controlsInfoDialog:Landroid/support/v4/app/DialogFragment;

    return-void
.end method

.method private findSettingsDefaultCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 2

    .line 179
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    .line 180
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getDefaultControlsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getPurchasableComponent(Ljava/lang/String;)Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getControlsId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->controlsId:Ljava/lang/String;

    return-object v0
.end method

.method public getControlsInfoDialog()Landroid/support/v4/app/DialogFragment;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->controlsInfoDialog:Landroid/support/v4/app/DialogFragment;

    return-object v0
.end method

.method public getDefaultEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->defaultEnvironmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    return-object v0
.end method

.method public getDefaultUiOverlay()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->defaultUiOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getUserSelectedCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->findSettingsDefaultCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getRecommendedCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFurtherStartupActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/StartupAction<",
            "TStateClass;>;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->furtherStartupActions:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getParentDir()Ljava/io/File;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->parentDir:Ljava/io/File;

    return-object v0
.end method

.method public getRecommendedCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->recommendedCustomizationPackage:Lcom/eltechs/axs/payments/PurchasableComponent;

    return-object v0
.end method

.method public getUserSelectedCustomizationPackage()Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->userSelectedCustomizationPackage:Lcom/eltechs/axs/payments/PurchasableComponent;

    return-object v0
.end method

.method public setUserSelectedCustomizationPackage(Lcom/eltechs/axs/payments/PurchasableComponent;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->userSelectedCustomizationPackage:Lcom/eltechs/axs/payments/PurchasableComponent;

    return-void
.end method
