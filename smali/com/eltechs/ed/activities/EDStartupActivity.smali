.class public Lcom/eltechs/ed/activities/EDStartupActivity;
.super Lcom/eltechs/axs/activities/StartupActivity;
.source "EDStartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/activities/StartupActivity<",
        "Lcom/eltechs/ed/EDApplicationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE64_APP_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAozYFhPvaURKRrOcUfVLV8l+M8A9tdU9NmOe8nzc9hNEtUyfTb9XDaClrojl54no1xJmMjCum/xmhd5qub9wclA5voW6D2gSD/R54Y/TAHlLVdhqdnN8eJnBaPw8eSe23DfXqG7S+/zjRbUuW56CPPgvCZCKrfiTi7b9x9WADf50egN/f2IkYhI/2n17ew80S5CyHSd+ZNNU03w72JDEOsCL2NLeWLKaJ5F+yxJ6Xzg9tutoTCNigOogLY+BdigFIITFz1EVBL+3POJDyKE6Sqt3dl+iCjWUA7MHBuYHd0bVo5NDbMMuMxtPFOhh31o89WNyOqKOHpSCsUxYGJOUHUwIDAQAB"

.field private static final GENERIC_IMAGE_DIRECTORY_NAME:Ljava/lang/String; = "image"

.field private static final PROGRESS_FILE_NAME:Ljava/lang/String; = "ed_progress"

.field public static final SOCKET_PATH_SUFFIX:Ljava/lang/String; = "ed"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-class v0, Lcom/eltechs/ed/EDApplicationState;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/activities/StartupActivity;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 53
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "WARNING!!!"

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0800ad

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Shutdown while startup in progress may corrupt application state!\n\nAre you sure you want to exit?"

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "OK"

    .line 58
    new-instance v2, Lcom/eltechs/ed/activities/EDStartupActivity$1;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/activities/EDStartupActivity$1;-><init>(Lcom/eltechs/ed/activities/EDStartupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    .line 66
    new-instance v2, Lcom/eltechs/ed/activities/EDStartupActivity$2;

    invoke-direct {v2, p0}, Lcom/eltechs/ed/activities/EDStartupActivity$2;-><init>(Lcom/eltechs/ed/activities/EDStartupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method protected initialiseStartupActions()V
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDStartupActivity;->getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/EDApplicationState;

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/ed/activities/EDStartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    invoke-interface {v0}, Lcom/eltechs/ed/EDApplicationState;->getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/eltechs/axs/configuration/MemsplitConfiguration;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/eltechs/axs/configuration/MemsplitConfiguration;-><init>(Z)V

    invoke-interface {v0, v3}, Lcom/eltechs/ed/EDApplicationState;->setMemsplitConfiguration(Lcom/eltechs/axs/configuration/MemsplitConfiguration;)V

    const-string v3, "image"

    .line 85
    invoke-static {v1, v3, v4}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->find(Landroid/content/Context;Ljava/lang/String;Z)Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/eltechs/ed/EDApplicationState;->setExagearImage(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V

    .line 89
    .line 91
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;

    const/16 v3, 0x2712

    invoke-direct {v0, p0, v3}, Lcom/eltechs/axs/configuration/startup/actions/RequestPermissions;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 92
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

    const-string v3, "/home"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v6, "ed_progress"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v3, v1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;-><init>(Z[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 93
    new-instance v0, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;

    invoke-direct {v0}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;-><init>()V

    invoke-virtual {v2, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 94
    new-instance v0, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;

    invoke-direct {v0}, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;-><init>()V

    invoke-virtual {v2, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 95
    new-instance v0, Lcom/eltechs/ed/startupActions/WDesktop;

    invoke-direct {v0}, Lcom/eltechs/ed/startupActions/WDesktop;-><init>()V

    invoke-virtual {v2, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    return-void
.end method
