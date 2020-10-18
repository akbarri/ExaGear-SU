.class public Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;
.super Ljava/lang/Object;
.source "UBTLaunchConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;
    }
.end annotation


# instance fields
.field private fileNameReplacements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fsRoot:Ljava/lang/String;

.field private guestArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guestEnvironmentVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guestExecutable:Ljava/lang/String;

.field private guestExecutablePath:Ljava/lang/String;

.field private isStraceEnabled:Z

.field private socketPathSuffix:Ljava/lang/String;

.field private vfsHacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fsRoot:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestExecutablePath:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestExecutable:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestArguments:Ljava/util/List;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->isStraceEnabled:Z

    .line 33
    const-class v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->vfsHacks:Ljava/util/Set;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fileNameReplacements:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addArgumentsToEnvironment(Lcom/eltechs/axs/environmentService/AXSEnvironment;)V
    .locals 6

    .line 132
    const-class v0, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/XServerComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const-string v4, "DISPLAY=:%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/XServerComponent;->getDisplayNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    const-class v0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;

    if-eqz v0, :cond_1

    .line 141
    iget-object v3, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const-string v4, "GALLIUM_DRIVER=virpipe"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const-string v4, "VTEST_SOCKET=%s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    const-class v0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;

    if-eqz v0, :cond_2

    .line 148
    iget-object v3, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const-string v4, "AXS_SOUND_SERVER_PORT=%s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/ALSAServerComponent;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    const-class v0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    if-eqz p1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const-string v3, "AXS_DSOUND_SERVER_PORT=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFileNameReplacements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fileNameReplacements:Ljava/util/Map;

    return-object v0
.end method

.method public getFsRoot()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fsRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestArguments:Ljava/util/List;

    return-object v0
.end method

.method public getGuestEnvironmentVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    return-object v0
.end method

.method public getGuestExecutable()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestExecutable:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestExecutablePath()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestExecutablePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketPathSuffix()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->socketPathSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getVfsHacks()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->vfsHacks:Ljava/util/Set;

    .line 176
    iget-object v1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fileNameReplacements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->PRERESOLVE_EXPLICITLY_LISTED_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public isStraceEnabled()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->isStraceEnabled:Z

    return v0
.end method

.method public setFileNameReplacements(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fileNameReplacements:Ljava/util/Map;

    return-void
.end method

.method public setFsRoot(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->fsRoot:Ljava/lang/String;

    return-void
.end method

.method public setGuestArguments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestArguments:Ljava/util/List;

    return-void
.end method

.method public setGuestArguments([Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestArguments:Ljava/util/List;

    return-void
.end method

.method public setGuestEnvironmentVariables(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    return-void
.end method

.method public setGuestEnvironmentVariables([Ljava/lang/String;)V
    .locals 2

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestEnvironmentVariables:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public setGuestExecutable(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestExecutable:Ljava/lang/String;

    return-void
.end method

.method public setGuestExecutablePath(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->guestExecutablePath:Ljava/lang/String;

    return-void
.end method

.method public setSocketPathSuffix(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->socketPathSuffix:Ljava/lang/String;

    return-void
.end method

.method public setStraceEnabled(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->isStraceEnabled:Z

    return-void
.end method

.method public setVfsHacks(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;->vfsHacks:Ljava/util/Set;

    return-void
.end method
