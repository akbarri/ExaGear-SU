.class Lcom/eltechs/axs/helpers/ZipInstallerObb$1$2;
.super Ljava/lang/Object;
.source "ZipInstallerObb.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;


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

    .line 178
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$2;->this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$2;->this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    iget-object p1, p1, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->access$100(Lcom/eltechs/axs/helpers/ZipInstallerObb;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    array-length v1, p1

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return p2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
