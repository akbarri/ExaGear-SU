.class public Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;
.super Ljava/lang/Object;
.source "EnvironmentInfoHelpers.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ubt-helpers"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRunUbtOnCpu(Z)Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;->isSupportedCpu()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;->isCpuFeaturesOk(Z)Z

    move-result p0

    return p0
.end method

.method private static native isCpuFeaturesOk(Z)Z
.end method

.method public static final isMemSplit3g1g(Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;)Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getElfLoaderPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getIsMemSplit3g1gPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;->runNativeProgram(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final isSupportedCpu()Z
    .locals 2

    const-string v0, "os.arch"

    .line 54
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "armv7"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "aarch64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static native runNativeProgram(Ljava/lang/String;Ljava/lang/String;)Z
.end method
