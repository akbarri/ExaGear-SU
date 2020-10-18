.class public Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;
.super Ljava/lang/Object;
.source "EnvironmentCustomisationParameters.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static DEFAULT_CONTROLS_NAME_NONE:Ljava/lang/String; = "None"

.field private static final STORAGE_FORMAT_VERSION_1:I = 0x1

.field private static final STORAGE_FORMAT_VERSION_CURR:I = 0x2

.field private static final serialVersionUID:J = -0x4e948ca372be521L


# instance fields
.field private defaultControlsName:Ljava/lang/String;

.field private localeName:Ljava/lang/String;

.field private screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v6, Lcom/eltechs/axs/xserver/ScreenInfo;

    const/16 v1, 0x320

    const/16 v2, 0x258

    const/16 v3, 0x50

    const/16 v4, 0x3c

    const/16 v5, 0x20

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(IIIII)V

    iput-object v6, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    const-string v0, "zh_CN.UTF-8"

    .line 33
    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->DEFAULT_CONTROLS_NAME_NONE:Ljava/lang/String;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V
    .locals 1

    .line 69
    iget-object v0, p1, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 70
    iget-object v0, p1, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    .line 71
    iget-object p1, p1, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    return-void
.end method

.method public getDefaultControlsName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Attempted to load EnvironmentCustomisationParameters created by a newer version of AXS."

    .line 78
    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    if-ne v0, v1, :cond_1

    .line 81
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/ScreenInfo;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 82
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    .line 83
    sget-object p1, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->DEFAULT_CONTROLS_NAME_NONE:Ljava/lang/String;

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    .line 86
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/ScreenInfo;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 87
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public setDefaultControlsName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    return-void
.end method

.method public setLocaleName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    return-void
.end method

.method public setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 95
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->localeName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->defaultControlsName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
