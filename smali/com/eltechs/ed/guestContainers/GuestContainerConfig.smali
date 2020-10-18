.class public Lcom/eltechs/ed/guestContainers/GuestContainerConfig;
.super Ljava/lang/Object;
.source "GuestContainerConfig.java"


# static fields
.field public static final CONTAINER_CONFIG_FILE_KEY_PREFIX:Ljava/lang/String; = "com.eltechs.ed.CONTAINER_CONFIG_"

.field public static final KEY_CONTROLS:Ljava/lang/String; = "CONTROLS"

.field public static final KEY_DEFAULT_CONTROLS_NOT_SHORTCUT:Ljava/lang/String; = "DEFAULT_CONTROLS_NOT_SHORTCUT"

.field public static final KEY_DEFAULT_RESOLUTION_NOT_SHORTCUT:Ljava/lang/String; = "DEFAULT_RESOLUTION_NOT_SHORTCUT"

.field public static final KEY_HIDE_TASKBAR_SHORTCUT:Ljava/lang/String; = "HIDE_TASKBAR_SHORTCUT"

.field public static final KEY_LOCALE_NAME:Ljava/lang/String; = "LOCALE_NAME"

.field public static final KEY_NAME:Ljava/lang/String; = "NAME"

.field public static final KEY_RUN_ARGUMENTS:Ljava/lang/String; = "RUN_ARGUMENTS"

.field public static final KEY_RUN_GUIDE:Ljava/lang/String; = "RUN_GUIDE"

.field public static final KEY_RUN_GUIDE_SHOWN:Ljava/lang/String; = "RUN_GUIDE_SHOWN"

.field public static final KEY_SCREEN_COLOR_DEPTH:Ljava/lang/String; = "SCREEN_COLOR_DEPTH"

.field public static final KEY_SCREEN_SIZE:Ljava/lang/String; = "SCREEN_SIZE"

.field public static final KEY_STARTUP_ACTIONS:Ljava/lang/String; = "STARTUP_ACTIONS"

.field private static final SUPPORTED_RESOLUTIONS:[Ljava/lang/String;


# instance fields
.field private mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field private mContext:Landroid/content/Context;

.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "640,480"

    const-string v1, "800,600"

    const-string v2, "1024,768"

    const-string v3, "1280,720"

    const-string v4, "1280,1024"

    const-string v5, "1366,768"

    const-string v6, "1600,900"

    const-string v7, "1920,1080"

    .line 38
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->SUPPORTED_RESOLUTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.eltechs.ed.CONTAINER_CONFIG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    .line 57
    iput-object p2, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-void
.end method

.method static cloneContainerConfig(Lcom/eltechs/ed/guestContainers/GuestContainer;Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 3

    .line 65
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setName(Ljava/lang/String;)V

    .line 66
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V

    .line 67
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getLocaleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setLocaleName(Ljava/lang/String;)V

    .line 68
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunArguments(Ljava/lang/String;)V

    .line 69
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getControls()Lcom/eltechs/ed/controls/Controls;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setControls(Lcom/eltechs/ed/controls/Controls;)V

    .line 70
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getHideTaskbarOnShortcut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setHideTaskbarOnShortcut(Z)V

    .line 71
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultControlsNotShortcut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setDefaultControlsNotShortcut(Z)V

    .line 72
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultResolutionNotShortcut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setDefaultResolutionNotShortcut(Z)V

    .line 73
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getStartupActions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setStartupActions(Ljava/lang/String;)V

    .line 74
    iget-object v0, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuide()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunGuide(Ljava/lang/String;)V

    .line 75
    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object p0, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuideShown()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunGuideShown(Z)V

    return-void
.end method

.method public static getDefaultScreenSize()[I
    .locals 4

    .line 364
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 365
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 366
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 369
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 370
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x320

    .line 373
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x258

    .line 374
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    .line 376
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setScreenInfoDefault()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SCREEN_SIZE"

    const-string v2, "default"

    .line 195
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SCREEN_COLOR_DEPTH"

    const/16 v2, 0x10

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method deleteConfig()V
    .locals 4

    .line 85
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/shared_prefs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.eltechs.ed.CONTAINER_CONFIG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v2, v2, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.eltechs.ed.CONTAINER_CONFIG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v3, v3, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public getControls()Lcom/eltechs/ed/controls/Controls;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "CONTROLS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/eltechs/ed/controls/Controls;->getDefault()Lcom/eltechs/ed/controls/Controls;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    invoke-static {v0}, Lcom/eltechs/ed/controls/Controls;->find(Ljava/lang/String;)Lcom/eltechs/ed/controls/Controls;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    invoke-static {}, Lcom/eltechs/ed/controls/Controls;->getDefault()Lcom/eltechs/ed/controls/Controls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setControls(Lcom/eltechs/ed/controls/Controls;)V

    .line 247
    invoke-static {}, Lcom/eltechs/ed/controls/Controls;->getDefault()Lcom/eltechs/ed/controls/Controls;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultControlsNotShortcut()Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "DEFAULT_CONTROLS_NOT_SHORTCUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDefaultResolutionNotShortcut()Z
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "DEFAULT_RESOLUTION_NOT_SHORTCUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHideTaskbarOnShortcut()Z
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_TASKBAR_SHORTCUT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "LOCALE_NAME"

    iget-object v2, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/eltechs/ed/Locales;->getLocaleByDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v3, v3, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunArguments()Ljava/lang/String;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "RUN_ARGUMENTS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunGuide()Ljava/lang/String;
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "RUN_GUIDE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunGuideShown()Ljava/lang/Boolean;
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "RUN_GUIDE_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "SCREEN_SIZE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "SCREEN_COLOR_DEPTH"

    .line 134
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "SCREEN_SIZE"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 144
    invoke-static {}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultScreenSize()[I

    move-result-object v0

    .line 145
    aget v1, v0, v3

    .line 146
    aget v0, v0, v2

    :goto_0
    move v4, v0

    move v3, v1

    goto :goto_1

    :cond_1
    const-string v1, ","

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 154
    :goto_1
    div-int/lit8 v5, v3, 0xa

    .line 155
    div-int/lit8 v6, v4, 0xa

    .line 157
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "SCREEN_COLOR_DEPTH"

    const-string v2, "16"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 159
    new-instance v0, Lcom/eltechs/axs/xserver/ScreenInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(IIIII)V

    return-object v0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartupActions()Ljava/lang/String;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "STARTUP_ACTIONS"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadDefaults()V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v1, v1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setName(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setScreenInfoDefault()V

    .line 101
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/eltechs/ed/Locales;->getLocaleByDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setLocaleName(Ljava/lang/String;)V

    const-string v0, ""

    .line 102
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunArguments(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/eltechs/ed/controls/Controls;->getDefault()Lcom/eltechs/ed/controls/Controls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setControls(Lcom/eltechs/ed/controls/Controls;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setHideTaskbarOnShortcut(Z)V

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setDefaultControlsNotShortcut(Z)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setDefaultResolutionNotShortcut(Z)V

    const-string v1, ""

    .line 107
    invoke-virtual {p0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setStartupActions(Ljava/lang/String;)V

    const-string v1, ""

    .line 108
    invoke-virtual {p0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunGuide(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunGuideShown(Z)V

    return-void
.end method

.method public setControls(Lcom/eltechs/ed/controls/Controls;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONTROLS"

    invoke-virtual {p1}, Lcom/eltechs/ed/controls/Controls;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDefaultControlsNotShortcut(Z)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DEFAULT_CONTROLS_NOT_SHORTCUT"

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDefaultResolutionNotShortcut(Z)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DEFAULT_RESOLUTION_NOT_SHORTCUT"

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHideTaskbarOnShortcut(Z)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HIDE_TASKBAR_SHORTCUT"

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLocaleName(Ljava/lang/String;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCALE_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRunArguments(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RUN_ARGUMENTS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRunGuide(Ljava/lang/String;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RUN_GUIDE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRunGuideShown(Z)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RUN_GUIDE_SHOWN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    sget-object v2, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->SUPPORTED_RESOLUTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 172
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    const-string v1, "SCREEN_SIZE"

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    const-string v1, "SCREEN_SIZE"

    const-string v2, "default"

    .line 183
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    const-string v1, "SCREEN_COLOR_DEPTH"

    .line 185
    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStartupActions(Ljava/lang/String;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STARTUP_ACTIONS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
