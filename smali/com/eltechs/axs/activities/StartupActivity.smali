.class public abstract Lcom/eltechs/axs/activities/StartupActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "StartupActivity.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;
.implements Lcom/eltechs/axs/configuration/startup/actions/UserInteractionRequestListener;
.implements Lcom/eltechs/axs/configuration/startup/actions/StartupStepInfoListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;>",
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "TStateClass;>;",
        "Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;",
        "Lcom/eltechs/axs/configuration/startup/actions/UserInteractionRequestListener;",
        "Lcom/eltechs/axs/configuration/startup/actions/StartupStepInfoListener;"
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_GET_PERMISSIONS:I = 0x2712

.field public static final REQUEST_CODE_GET_USER_INPUT:I = 0x2711

.field private static final RESTART_AFTER_SHUTDOWN_FLAG_VALUE:Ljava/lang/String; = "restart"

.field public static final RESULT_CODE_GOT_USER_INPUT:I = 0x2

.field private static final SHUTDOWN_REQUEST_FLAG:Ljava/lang/String; = "just die already"

.field public static final STATE_PROGRESS_DESCR:Ljava/lang/String; = "PROGRESS_DESCR"

.field public static final STATE_PROGRESS_FILENAME:Ljava/lang/String; = "PROGRESS_FILENAME"

.field public static final TAG:Ljava/lang/String; = "StartupActivity"

.field private static final progressUpdateInterval:J = 0xc8L

.field private static shutdownInProgress:Z


# instance fields
.field private isUpdateProgress:Z

.field private mainActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;"
        }
    .end annotation
.end field

.field private progressDescription:Ljava/lang/String;

.field private progressFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TStateClass;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressDescription:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->isUpdateProgress:Z

    .line 62
    const-class v0, Lcom/eltechs/axs/activities/XServerDisplayActivity;

    iput-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->mainActivityClass:Ljava/lang/Class;

    .line 66
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/applicationState/ApplicationStateObject;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/eltechs/axs/Globals;->setApplicationState(Lcom/eltechs/axs/applicationState/ApplicationStateObject;)V

    :cond_0
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/StartupActivity;->enableLogging(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/activities/StartupActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->updateProgress()V

    return-void
.end method

.method private maybeShutdown(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "just die already"

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "This is shutdown."

    .line 303
    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/StartupActivity;->logInfo(Ljava/lang/String;)V

    .line 305
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->finish()V

    .line 306
    invoke-static {}, Lcom/eltechs/axs/Globals;->clearState()V

    .line 307
    sput-boolean v1, Lcom/eltechs/axs/activities/StartupActivity;->shutdownInProgress:Z

    const-string v1, "restart"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Will restart after shutdown."

    .line 311
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->logInfo(Ljava/lang/String;)V

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getAppLaunchActivityClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10208000

    .line 314
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private moveToNextAction()V
    .locals 2

    .line 459
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->setStepInfo(Lcom/eltechs/axs/configuration/startup/StartupActionInfo;)V

    .line 461
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->runAction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->startupFinished(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private resetProgressToDefault()V
    .locals 2

    .line 183
    sget v0, Lcom/eltechs/axs/R$id;->startupProgressBar:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 186
    sget v0, Lcom/eltechs/axs/R$id;->sa_step_description:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private sendStatisticsForGA()V
    .locals 0

    .line 333
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendAndroidVersion(Landroid/app/Activity;)V

    .line 334
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendDeviceInfo(Landroid/app/Activity;)V

    .line 335
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendScreenParameters(Landroid/app/Activity;)V

    .line 336
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendLinuxVersion(Landroid/app/Activity;)V

    .line 337
    invoke-static {p0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendReferrer(Landroid/app/Activity;)V

    return-void
.end method

.method private setupUI()V
    .locals 1

    .line 326
    sget v0, Lcom/eltechs/axs/R$layout;->startup:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->setContentView(I)V

    return-void
.end method

.method public static shutdownAXSApplication()V
    .locals 1

    const/4 v0, 0x0

    .line 427
    invoke-static {v0}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication(Z)V

    return-void
.end method

.method public static shutdownAXSApplication(Z)V
    .locals 5

    .line 432
    sget-boolean v0, Lcom/eltechs/axs/activities/StartupActivity;->shutdownInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    .line 439
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 442
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object v0

    goto :goto_1

    .line 443
    :cond_2
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 445
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getAppLaunchActivityClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x44800000    # 1024.0f

    .line 447
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez v1, :cond_3

    const/high16 v1, 0x10000000

    .line 449
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    const-string v1, "just die already"

    if-eqz p0, :cond_4

    const-string p0, "restart"

    goto :goto_2

    :cond_4
    const-string p0, ""

    .line 451
    :goto_2
    invoke-virtual {v3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 454
    sput-boolean v2, Lcom/eltechs/axs/activities/StartupActivity;->shutdownInProgress:Z

    return-void
.end method

.method private updateProgress()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->resetProgressToDefault()V

    .line 212
    iput-boolean v1, p0, Lcom/eltechs/axs/activities/StartupActivity;->isUpdateProgress:Z

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->isUpdateProgress:Z

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->updateProgressPost()V

    return-void

    .line 231
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    .line 239
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x64

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v0, v2

    .line 246
    :goto_0
    :try_start_2
    sget v4, Lcom/eltechs/axs/R$id;->startupProgressBar:I

    invoke-virtual {p0, v4}, Lcom/eltechs/axs/activities/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 250
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 254
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 257
    :goto_1
    sget v0, Lcom/eltechs/axs/R$id;->sa_step_description:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    const-string v1, ""

    if-eq v3, v1, :cond_4

    .line 260
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    :catch_1
    :goto_2
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->updateProgressPost()V

    return-void
.end method

.method private updateProgressPost()V
    .locals 3

    .line 195
    new-instance v0, Lcom/eltechs/axs/activities/StartupActivity$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/activities/StartupActivity$1;-><init>(Lcom/eltechs/axs/activities/StartupActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, v0}, Lcom/eltechs/axs/helpers/UiThread;->postDelayed(JLjava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public actionDone(Lcom/eltechs/axs/configuration/startup/StartupAction;)V
    .locals 3

    const-string v0, "actionDone(%s)"

    const/4 v1, 0x1

    .line 394
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/activities/StartupActivity;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->moveToNextAction()V

    return-void
.end method

.method public actionFailed(Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V
    .locals 3

    const-string v0, "actionFailed(%s, \'%s\')"

    const/4 v1, 0x2

    .line 401
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/activities/StartupActivity;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-static {p2}, Lcom/eltechs/axs/activities/FatalErrorActivity;->showFatalError(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method protected getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initialiseStartupActions()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2711

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Received a response to an unknown request %d; can only issue REQUEST_CODE_GET_USER_INPUT."

    .line 343
    new-array v4, v1, [Ljava/lang/Object;

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    .line 343
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const/4 p1, 0x2

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    const-string v3, "Received an invalid resultCode %d."

    .line 347
    new-array v1, v1, [Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v2, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    if-ne p2, p1, :cond_3

    .line 352
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    invoke-static {p3}, Lcom/eltechs/axs/activities/StartupActivity;->getResultEx(Landroid/content/Intent;)Ljava/io/Serializable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->userInteractionFinished(Ljava/io/Serializable;)V

    goto :goto_3

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->userInteractionCanceled()V

    :goto_3
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 100
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/eltechs/axs/activities/StartupActivity;->maybeShutdown(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_1

    .line 122
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->finish()V

    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->setupUI()V

    .line 128
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 132
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->sendStatisticsForGA()V

    .line 134
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->setAndroidApplicationContext(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->setStartupActionsCollection(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)V

    .line 138
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/eltechs/axs/AppConfig;->getFirstRunTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppConfig;->setFirstRunTime(Ljava/util/Date;)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "RUN_AFTER_NOTIFICATION"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/AppConfig;->setRunAfterNotification(Z)V

    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NOTIFICATION_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/eltechs/axs/AppConfig;->setNotificationName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->initialiseStartupActions()V

    .line 151
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->moveToNextAction()V

    goto :goto_0

    .line 171
    :cond_4
    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 173
    invoke-virtual {p0, v1}, Lcom/eltechs/axs/activities/StartupActivity;->startupFinished(Ljava/lang/Class;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 293
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/eltechs/axs/activities/StartupActivity;->maybeShutdown(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onPause()V

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->isUpdateProgress:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x2712

    if-ne p1, p2, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/StartupActivity;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->userInteractionFinished(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PROGRESS_DESCR"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressDescription:Ljava/lang/String;

    const-string v0, "PROGRESS_FILENAME"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;->onResume()V

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->isUpdateProgress:Z

    .line 287
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->updateProgressPost()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PROGRESS_DESCR"

    .line 82
    iget-object v1, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PROGRESS_FILENAME"

    .line 83
    iget-object v1, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .line 387
    invoke-static {p0, p1, p2}, Lcom/eltechs/axs/activities/StartupActivity;->createIntent(Lcom/eltechs/axs/activities/FrameworkActivity;Ljava/lang/Class;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x2711

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/activities/StartupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected setMainActivityClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/eltechs/axs/activities/StartupActivity;->mainActivityClass:Ljava/lang/Class;

    return-void
.end method

.method public setStepInfo(Lcom/eltechs/axs/configuration/startup/StartupActionInfo;)V
    .locals 1

    .line 408
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->getStepDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressDescription:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->getProgressFilename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    .line 413
    iget-object p1, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 415
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/eltechs/axs/activities/StartupActivity;->progressFileName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/StartupActivity;->isUpdateProgress:Z

    .line 422
    invoke-direct {p0}, Lcom/eltechs/axs/activities/StartupActivity;->updateProgress()V

    return-void
.end method

.method protected startupFinished(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 469
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eltechs/axs/activities/StartupActivity;->mainActivityClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "facadeclass"

    .line 471
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
