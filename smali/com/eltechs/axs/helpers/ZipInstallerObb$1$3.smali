.class Lcom/eltechs/axs/helpers/ZipInstallerObb$1$3;
.super Ljava/lang/Object;
.source "ZipInstallerObb.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$3;->this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-static {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method
