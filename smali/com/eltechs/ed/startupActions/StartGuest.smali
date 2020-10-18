.class public Lcom/eltechs/ed/startupActions/StartGuest;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "StartGuest.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/AsyncStartupAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;,
        Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;,
        Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;,
        Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/XServerDisplayActivityConfigurationAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;",
        "Lcom/eltechs/axs/configuration/startup/AsyncStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartGuest"

.field private static final mUserAreaDir:Ljava/io/File;


# instance fields
.field private mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field private mContStartupActions:Ljava/lang/String;

.field private mControls:Lcom/eltechs/ed/controls/Controls;

.field private mEnv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExeArgv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExeWorkDir:Ljava/io/File;

.field private mForceUseDefaultContols:Z

.field private mForceUseDefaultResolution:Z

.field private final mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

.field private mHideTaskbar:Z

.field private mHideXServerImage:Z

.field private mLocaleName:Ljava/lang/String;

.field private mRunArguments:Ljava/lang/String;

.field private mRunGuide:Ljava/lang/String;

.field private mRunScriptToCopy:Ljava/io/File;

.field private mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getMainSDCard()Ljava/io/File;

    move-result-object v1

    const-string v2, "Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)V
    .locals 6

    .line 153
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideXServerImage:Z

    .line 83
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 85
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    .line 87
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideTaskbar:Z

    .line 154
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->access$000(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    .line 155
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->access$100(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->access$200(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v3

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 158
    iget-object v3, v1, Lcom/eltechs/ed/InstallRecipe;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 159
    iget-object v3, v1, Lcom/eltechs/ed/InstallRecipe;->mControls:Lcom/eltechs/ed/controls/Controls;

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    .line 160
    iget-object v3, v1, Lcom/eltechs/ed/InstallRecipe;->mLocaleName:Ljava/lang/String;

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mLocaleName:Ljava/lang/String;

    .line 161
    iget-object v3, v1, Lcom/eltechs/ed/InstallRecipe;->mRunArguments:Ljava/lang/String;

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunArguments:Ljava/lang/String;

    .line 162
    iget-object v3, v1, Lcom/eltechs/ed/InstallRecipe;->mStartupActions:Ljava/lang/String;

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    .line 163
    iget-object v3, v1, Lcom/eltechs/ed/InstallRecipe;->mRunGuide:Ljava/lang/String;

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunGuide:Ljava/lang/String;

    .line 164
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestImagePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/eltechs/ed/InstallRecipe;->mRunScriptName:Ljava/lang/String;

    invoke-static {v5}, Lcom/eltechs/ed/startupActions/StartGuest;->getRecipeGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunScriptToCopy:Ljava/io/File;

    .line 165
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeWorkDir:Ljava/io/File;

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->access$100(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/FileHelpers;->cutRootPrefixFromPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestWinePrefixPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/dosdevices/d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "/bin/bash"

    aput-object v4, v3, v0

    const-string v0, "-x"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v1, Lcom/eltechs/ed/InstallRecipe;->mInstallScriptName:Ljava/lang/String;

    invoke-static {v0}, Lcom/eltechs/ed/startupActions/StartGuest;->getRecipeGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eval \"wine \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultControlsNotShortcut()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    :cond_0
    iput-boolean v4, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultResolutionNotShortcut()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    :cond_2
    iput-boolean v4, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;)V
    .locals 5

    .line 224
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideXServerImage:Z

    .line 83
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 85
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    .line 87
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideTaskbar:Z

    .line 225
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;->access$500(Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 226
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeWorkDir:Ljava/io/File;

    .line 228
    iget-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/bin/bash"

    aput-object v3, v2, v0

    const-string v0, "-x"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "install_packages.sh"

    invoke-static {v0}, Lcom/eltechs/ed/startupActions/StartGuest;->getRecipeGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, ""

    .line 231
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;->access$600(Lcom/eltechs/ed/startupActions/StartGuest$InstallPackage;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/ed/ContainerPackage;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/eltechs/ed/ContainerPackage;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTALL_PACKAGES="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iput-boolean v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideXServerImage:Z

    .line 240
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultControlsNotShortcut()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iput-boolean v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultResolutionNotShortcut()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    iput-boolean v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;)V
    .locals 3

    .line 204
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideXServerImage:Z

    .line 83
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 85
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    .line 87
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideTaskbar:Z

    .line 205
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;->access$400(Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 206
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeWorkDir:Ljava/io/File;

    .line 207
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "run/simple.sh"

    invoke-static {v2}, Lcom/eltechs/ed/startupActions/StartGuest;->getRecipeGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "eval \"wine /opt/exec_wrapper.exe /opt/TFM.exe D:/\""

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultControlsNotShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iput-boolean v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultResolutionNotShortcut()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    iput-boolean v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;)V
    .locals 6

    .line 187
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideXServerImage:Z

    .line 83
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    .line 85
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    .line 87
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideTaskbar:Z

    .line 188
    invoke-static {p1}, Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;->access$300(Lcom/eltechs/ed/startupActions/StartGuest$RunXDGLink;)Lcom/eltechs/ed/XDGLink;

    move-result-object p1

    .line 190
    iget-object v1, p1, Lcom/eltechs/ed/XDGLink;->guestCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iput-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 191
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/eltechs/ed/XDGLink;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    iget-object v3, p1, Lcom/eltechs/ed/XDGLink;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getHostPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeWorkDir:Ljava/io/File;

    .line 192
    iget-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v5}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestWinePrefixPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "run.sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eval \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/eltechs/ed/XDGLink;->exec:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    .line 193
    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunArguments()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 192
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object p1, p1, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {p1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getHideTaskbarOnShortcut()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iput-boolean v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideTaskbar:Z

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/eltechs/ed/startupActions/StartGuest;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/eltechs/ed/startupActions/StartGuest;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->sendDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/eltechs/ed/startupActions/StartGuest;)Lcom/eltechs/ed/controls/Controls;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    return-object p0
.end method

.method static synthetic access$800(Lcom/eltechs/ed/startupActions/StartGuest;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/eltechs/ed/startupActions/StartGuest;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/StartGuest;->getApplicationState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getRecipeGuestPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/opt/recipe/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWineOptions(Lcom/eltechs/axs/xserver/ScreenInfo;Z)Ljava/lang/String;
    .locals 4

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explorer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/desktop=%s,%dx%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "xdroid"

    goto :goto_0

    :cond_0
    const-string p1, "shell"

    :goto_0
    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget v3, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x2

    iget p0, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setScreenInfoDefaultResolution(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 8

    .line 421
    invoke-static {}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getDefaultScreenSize()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 422
    aget v3, v0, v1

    const/4 v1, 0x1

    .line 423
    aget v4, v0, v1

    .line 425
    div-int/lit8 v5, v3, 0xa

    .line 426
    div-int/lit8 v6, v4, 0xa

    .line 428
    new-instance v0, Lcom/eltechs/axs/xserver/ScreenInfo;

    iget v7, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(IIIII)V

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 11

    .line 254
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->createContainer()Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    iget-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->makeContainerActive(Lcom/eltechs/ed/guestContainers/GuestContainer;)V

    .line 263
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v1, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    invoke-virtual {v0, v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setControls(Lcom/eltechs/ed/controls/Controls;)V

    .line 275
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    invoke-virtual {v0}, Lcom/eltechs/ed/controls/Controls;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0, v1}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setHideTaskbarOnShortcut(Z)V

    goto :goto_1

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getControls()Lcom/eltechs/ed/controls/Controls;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    .line 285
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mLocaleName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mLocaleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setLocaleName(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getLocaleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mLocaleName:Ljava/lang/String;

    .line 294
    :goto_2
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunArguments:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 296
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunArguments:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunArguments(Ljava/lang/String;)V

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunGuide:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 302
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunGuide:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setRunGuide(Ljava/lang/String;)V

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 308
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->setStartupActions(Ljava/lang/String;)V

    goto :goto_3

    .line 311
    :cond_7
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getStartupActions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    .line 315
    :goto_3
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunScriptToCopy:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mRunScriptToCopy:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v3, v3, Lcom/eltechs/ed/guestContainers/GuestContainer;->mWinePrefixPath:Ljava/lang/String;

    const-string v4, "run.sh"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    return-void

    :cond_8
    :goto_4
    const-string v0, "/home/xdroid/"

    .line 328
    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v3}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestWinePrefixPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    iget-boolean v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultContols:Z

    if-eqz v2, :cond_9

    .line 333
    invoke-static {}, Lcom/eltechs/ed/controls/Controls;->getDefault()Lcom/eltechs/ed/controls/Controls;

    move-result-object v2

    iput-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    .line 337
    :cond_9
    iget-boolean v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mForceUseDefaultResolution:Z

    if-eqz v2, :cond_a

    .line 339
    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-static {v2}, Lcom/eltechs/ed/startupActions/StartGuest;->setScreenInfoDefaultResolution(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 343
    :cond_a
    iget-object v2, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "wine "

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    .line 346
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iget-boolean v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideTaskbar:Z

    invoke-static {v3, v5}, Lcom/eltechs/ed/startupActions/StartGuest;->getWineOptions(Lcom/eltechs/axs/xserver/ScreenInfo;Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "wine "

    .line 347
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v7, "wine "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 348
    iget-object v7, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    iget-object v8, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v2, "StartGuest"

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "StartGuest"

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controls = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mControls:Lcom/eltechs/ed/controls/Controls;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "StartGuest"

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "winePrefix = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "StartGuest"

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exeWorkingDir = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeWorkDir:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "StartGuest"

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exeArgv = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 361
    new-instance v3, Lcom/eltechs/ed/startupActions/ContainerStartupAction;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v7, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mContStartupActions:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Lcom/eltechs/ed/startupActions/ContainerStartupAction;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_c
    new-instance v3, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;

    sget-object v5, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    invoke-direct {v3, v0, v5}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v3, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    invoke-direct {v3}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;-><init>()V

    .line 367
    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-virtual {v3, v5}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V

    .line 368
    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mLocaleName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->setLocaleName(Ljava/lang/String;)V

    .line 370
    new-instance v5, Lcom/eltechs/ed/startupActions/StartGuest$1;

    invoke-direct {v5, p0, v3}, Lcom/eltechs/ed/startupActions/StartGuest$1;-><init>(Lcom/eltechs/ed/startupActions/StartGuest;Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V

    invoke-static {v5}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    .line 380
    new-instance v3, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;

    const/16 v5, 0xc

    invoke-direct {v3, v5, v4}, Lcom/eltechs/axs/configuration/startup/actions/CreateTypicalEnvironmentConfiguration;-><init>(IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WINEPREFIX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    new-instance v3, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;

    iget-object v5, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeWorkDir:Ljava/io/File;

    iget-object v7, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mExeArgv:Ljava/util/List;

    new-array v8, v4, [Ljava/lang/String;

    .line 387
    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mEnv:Ljava/util/List;

    new-array v4, v4, [Ljava/lang/String;

    .line 388
    invoke-interface {v8, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, [Ljava/lang/String;

    const-string v9, "ed"

    sget-object v4, Lcom/eltechs/ed/startupActions/StartGuest;->mUserAreaDir:Ljava/io/File;

    .line 390
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/eltechs/ed/startupActions/CreateLaunchConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v3, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;

    new-instance v4, Lcom/eltechs/axs/environmentService/TrayConfiguration;

    const v5, 0x7f0800cc

    const v6, 0x7f0d006c

    invoke-direct {v4, v5, v6, v6}, Lcom/eltechs/axs/environmentService/TrayConfiguration;-><init>(III)V

    invoke-direct {v3, v4}, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;-><init>(Lcom/eltechs/axs/environmentService/TrayConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v3, Lcom/eltechs/axs/environmentService/StartGuestApplication;

    invoke-direct {v3, v1, v1}, Lcom/eltechs/axs/environmentService/StartGuestApplication;-><init>(ZZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mGcm:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-virtual {v4}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getGuestImagePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ed_progress"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/eltechs/ed/startupActions/StartGuest;->mHideXServerImage:Z

    invoke-direct {v1, v0, v3}, Lcom/eltechs/axs/configuration/startup/actions/WaitForXClientConnection;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v0, Lcom/eltechs/ed/startupActions/StartGuest$2;

    invoke-direct {v0, p0, v2}, Lcom/eltechs/ed/startupActions/StartGuest$2;-><init>(Lcom/eltechs/ed/startupActions/StartGuest;Ljava/util/List;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
