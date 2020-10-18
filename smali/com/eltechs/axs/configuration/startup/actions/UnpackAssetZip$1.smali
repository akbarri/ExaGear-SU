.class Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip$1;
.super Ljava/lang/Object;
.source "UnpackAssetZip.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installationFailed(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public installationFinished(Ljava/lang/String;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackAssetZip;->sendDone()V

    return-void
.end method
