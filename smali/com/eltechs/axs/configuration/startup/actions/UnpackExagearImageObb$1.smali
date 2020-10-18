.class Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;
.super Ljava/lang/Object;
.source "UnpackExagearImageObb.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

.field final synthetic val$ac:Landroid/content/Context;

.field final synthetic val$progressFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->val$ac:Landroid/content/Context;

    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->val$progressFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public noObbFound()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->val$ac:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eltechs/axs/R$string;->no_obb_file_found:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public reportProgress(J)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->val$progressFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

    sget p2, Lcom/eltechs/axs/R$string;->sa_unpacking_guest_image:I

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance p2, Landroid/util/AtomicFile;

    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->val$progressFile:Ljava/io/File;

    invoke-direct {p2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 115
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 117
    invoke-virtual {p2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public unpackingCompleted(Ljava/io/File;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->sendDone()V

    return-void
.end method

.method public unpackingInProgress()V
    .locals 0

    return-void
.end method
