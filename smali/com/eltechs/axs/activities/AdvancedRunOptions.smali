.class public Lcom/eltechs/axs/activities/AdvancedRunOptions;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "AdvancedRunOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeDefaultControlsName;,
        Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeLocale;,
        Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;,
        Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;,
        Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;",
        ">",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final SUPPORTED_COLOUR_DEPTHS:[I

.field private static final TYPICAL_SCREEN_RESOLUTIONS:[Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;


# instance fields
.field private changeColourDepthButton:Landroid/widget/ImageButton;

.field private changeDefaultControlsNameButton:Landroid/widget/ImageButton;

.field private changeLocaleButton:Landroid/widget/ImageButton;

.field private changeScreenResolutionButton:Landroid/widget/ImageButton;

.field private colourDepthDisplay:Landroid/widget/TextView;

.field private colourDepthsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

.field private defaultControlsNameDisplay:Landroid/widget/TextView;

.field private defaultControlsNamesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

.field private environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

.field private localeDisplay:Landroid/widget/TextView;

.field private localesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

.field private screenResolutionDisplay:Landroid/widget/TextView;

.field private screenResolutionsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 42
    new-array v0, v0, [Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    new-instance v1, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    const/16 v2, 0x320

    const/16 v3, 0x258

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->TYPICAL_SCREEN_RESOLUTIONS:[Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    .line 49
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->SUPPORTED_COLOUR_DEPTHS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0x10
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/activities/AdvancedRunOptions;II)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->formatScreenResolution(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/activities/AdvancedRunOptions;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->fillData()V

    return-void
.end method

.method static synthetic access$300(Lcom/eltechs/axs/activities/AdvancedRunOptions;I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->formatBpp(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/eltechs/axs/activities/AdvancedRunOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->formatLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/eltechs/axs/activities/AdvancedRunOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->formatDefaultControlsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createColourDepthsPopupMenu()V
    .locals 6

    .line 131
    new-instance v0, Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-direct {v0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;-><init>()V

    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->setExclusive(Z)V

    .line 133
    sget-object v1, Lcom/eltechs/axs/activities/AdvancedRunOptions;->SUPPORTED_COLOUR_DEPTHS:[I

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v1, v2

    .line 135
    new-instance v5, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;

    invoke-direct {v5, p0, v4}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;-><init>(Lcom/eltechs/axs/activities/AdvancedRunOptions;I)V

    invoke-virtual {v0, v5}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->add(Lcom/eltechs/axs/widgets/actions/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeColourDepthButton:Landroid/widget/ImageButton;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->colourDepthsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    .line 139
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->colourDepthsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->add(Lcom/eltechs/axs/widgets/actions/ActionGroup;)V

    return-void
.end method

.method private createDefaultControlsNamePopupMenu()V
    .locals 4

    .line 169
    new-instance v0, Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-direct {v0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;-><init>()V

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->setExclusive(Z)V

    .line 171
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->getSupportedDefaultControlsNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    new-instance v3, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeDefaultControlsName;

    invoke-direct {v3, p0, v2}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeDefaultControlsName;-><init>(Lcom/eltechs/axs/activities/AdvancedRunOptions;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->add(Lcom/eltechs/axs/widgets/actions/Action;)V

    goto :goto_0

    .line 176
    :cond_0
    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeDefaultControlsNameButton:Landroid/widget/ImageButton;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->defaultControlsNamesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    .line 177
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->defaultControlsNamesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->add(Lcom/eltechs/axs/widgets/actions/ActionGroup;)V

    return-void
.end method

.method private createLocalesPopupMenu()V
    .locals 6

    .line 144
    new-instance v0, Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-direct {v0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;-><init>()V

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->setExclusive(Z)V

    .line 146
    invoke-static {}, Lcom/eltechs/axs/Locales;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 148
    new-instance v5, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeLocale;

    invoke-direct {v5, p0, v4}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeLocale;-><init>(Lcom/eltechs/axs/activities/AdvancedRunOptions;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->add(Lcom/eltechs/axs/widgets/actions/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeLocaleButton:Landroid/widget/ImageButton;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->localesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    .line 152
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->localesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->add(Lcom/eltechs/axs/widgets/actions/ActionGroup;)V

    return-void
.end method

.method private createPopupMenus()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->createScreenResolutionsPopupMenu()V

    .line 111
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->createColourDepthsPopupMenu()V

    .line 112
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->createLocalesPopupMenu()V

    .line 113
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->createDefaultControlsNamePopupMenu()V

    return-void
.end method

.method private createScreenResolutionsPopupMenu()V
    .locals 6

    .line 118
    new-instance v0, Lcom/eltechs/axs/widgets/actions/ActionGroup;

    invoke-direct {v0}, Lcom/eltechs/axs/widgets/actions/ActionGroup;-><init>()V

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->setExclusive(Z)V

    .line 120
    sget-object v1, Lcom/eltechs/axs/activities/AdvancedRunOptions;->TYPICAL_SCREEN_RESOLUTIONS:[Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 122
    new-instance v5, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;

    invoke-direct {v5, p0, v4}, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;-><init>(Lcom/eltechs/axs/activities/AdvancedRunOptions;Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;)V

    invoke-virtual {v0, v5}, Lcom/eltechs/axs/widgets/actions/ActionGroup;->add(Lcom/eltechs/axs/widgets/actions/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeScreenResolutionButton:Landroid/widget/ImageButton;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->screenResolutionsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    .line 126
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->screenResolutionsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->add(Lcom/eltechs/axs/widgets/actions/ActionGroup;)V

    return-void
.end method

.method private fillData()V
    .locals 5

    .line 182
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->screenResolutionDisplay:Landroid/widget/TextView;

    iget v3, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    iget v4, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    invoke-direct {p0, v3, v4}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->formatScreenResolution(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->colourDepthDisplay:Landroid/widget/TextView;

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    invoke-direct {p0, v1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->formatBpp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->localeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getLocaleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->defaultControlsNameDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getDefaultControlsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private formatBpp(I)Ljava/lang/String;
    .locals 3

    const-string v0, "%d bpp"

    const/4 v1, 0x1

    .line 241
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatDefaultControlsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private formatLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private formatScreenResolution(II)Ljava/lang/String;
    .locals 3

    const-string v0, "%dx%d"

    const/4 v1, 0x2

    .line 236
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSupportedDefaultControlsNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/PurchasableComponentsCollectionAware;->getPurchasableComponentsCollection()Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getPurchasableComponents()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/payments/PurchasableComponent;

    .line 162
    invoke-interface {v2}, Lcom/eltechs/axs/payments/PurchasableComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private lookupWidgets()V
    .locals 1

    .line 95
    sget v0, Lcom/eltechs/axs/R$id;->aro_screen_resolution:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->screenResolutionDisplay:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/eltechs/axs/R$id;->aro_change_screen_resolution:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeScreenResolutionButton:Landroid/widget/ImageButton;

    .line 98
    sget v0, Lcom/eltechs/axs/R$id;->aro_colour_depth:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->colourDepthDisplay:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/eltechs/axs/R$id;->aro_change_colour_depth:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeColourDepthButton:Landroid/widget/ImageButton;

    .line 101
    sget v0, Lcom/eltechs/axs/R$id;->aro_locale:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->localeDisplay:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/eltechs/axs/R$id;->aro_change_locale:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeLocaleButton:Landroid/widget/ImageButton;

    .line 104
    sget v0, Lcom/eltechs/axs/R$id;->aro_default_controls_name:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->defaultControlsNameDisplay:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/eltechs/axs/R$id;->aro_change_default_controls_name:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->changeDefaultControlsNameButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public onChangeColourDepthClicked(Landroid/view/View;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->colourDepthsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->show()V

    return-void
.end method

.method public onChangeDefaultControlsNameClicked(Landroid/view/View;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->defaultControlsNamesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->show()V

    return-void
.end method

.method public onChangeLocaleClicked(Landroid/view/View;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->localesPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->show()V

    return-void
.end method

.method public onChangeScreenResolutionClicked(Landroid/view/View;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->screenResolutionsPopupMenu:Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;

    invoke-virtual {p1}, Lcom/eltechs/axs/widgets/popupMenu/AXSPopupMenu;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->requestWindowFeature(I)Z

    .line 76
    sget p1, Lcom/eltechs/axs/R$layout;->advanced_run_options:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->resizeRootViewToStandardDialogueSize()V

    .line 79
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    .line 81
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->lookupWidgets()V

    .line 82
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->createPopupMenus()V

    return-void
.end method

.method public onOKClicked(Landroid/view/View;)V
    .locals 0

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->get(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->storeDetectedExecutableFileConfiguration()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->finish()V

    return-void
.end method

.method public onResetToDefaultsClicked(Landroid/view/View;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions;->environmentCustomisationParameters:Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getDefaultEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->copyFrom(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V

    .line 218
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->fillData()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->fillData()V

    return-void
.end method
