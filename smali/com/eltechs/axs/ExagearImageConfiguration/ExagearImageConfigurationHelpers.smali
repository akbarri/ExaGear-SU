.class public Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;
.super Ljava/lang/Object;
.source "ExagearImageConfigurationHelpers.java"


# instance fields
.field private final image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    return-void
.end method


# virtual methods
.method public createEtcPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/passwd"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eltechs/axs/helpers/FileHelpers;->touch(Ljava/lang/String;)Ljava/io/File;

    .line 38
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v0, "root:x:0:0:root:/root:/bin/bash\n%s:x:%d:%d::%s:/bin/sh\n"

    const/4 v3, 0x4

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 42
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public createFakeSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/eltechs/axs/helpers/FileHelpers;->createFakeSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createTmp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "/tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V

    return-void
.end method

.method public varargs createVpathsList([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getConfigurationDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getVpathsList()Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 82
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 84
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    const-string v5, "/"

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const-string v5, "%s\n"

    .line 88
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 89
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v6}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    const-string v5, "%s\n"

    .line 92
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 93
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v6}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eltechs/axs/helpers/FileHelpers;->touch(Ljava/lang/String;)Ljava/io/File;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public createWineDisks(Ljava/lang/String;[Lcom/eltechs/axs/ExagearImageConfiguration/WineDiskInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v2}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "dosdevices"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 p1, 0x0

    .line 56
    array-length v1, p2

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    const-string v4, "%s:"

    const/4 v5, 0x1

    .line 58
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/eltechs/axs/ExagearImageConfiguration/WineDiskInfo;->diskLetter:Ljava/lang/String;

    aput-object v6, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v4}, Lcom/eltechs/axs/helpers/FileHelpers;->fixPathForVFAT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/eltechs/axs/ExagearImageConfiguration/WineDiskInfo;->diskTargetPath:Ljava/lang/String;

    .line 60
    invoke-static {v5, v4, v3}, Lcom/eltechs/axs/helpers/FileHelpers;->createFakeSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareWineForCurrentMemoryConfiguration(Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/applicationState/MemsplitConfigurationAware;

    invoke-interface {p1}, Lcom/eltechs/axs/applicationState/MemsplitConfigurationAware;->getMemsplitConfiguration()Lcom/eltechs/axs/configuration/MemsplitConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->isMemsplit3g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {p1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object p1

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "usr/lib/i386-linux-gnu/wine/kernel32.dll.so_2g"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "usr/lib/i386-linux-gnu/wine/kernel32.dll.so"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 133
    new-instance v0, Ljava/io/File;

    const-string v1, "usr/lib/i386-linux-gnu/wine/ntdll.dll.so_2g"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "usr/lib/i386-linux-gnu/wine/ntdll.dll.so"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 135
    new-instance v0, Ljava/io/File;

    const-string v1, "usr/bin/wine_2g"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "usr/bin/wine"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 137
    new-instance v0, Ljava/io/File;

    const-string v1, "usr/bin/wine-preloader_2g"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "usr/bin/wine-preloader"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public recreateSoundSocketDir()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "/tmp/.sound"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectory(Ljava/io/File;)V

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "/tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, ".sound"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public recreateX11SocketDir()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "/tmp/.X11-unix"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectory(Ljava/io/File;)V

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->image:Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "/tmp/.X11-unix"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
