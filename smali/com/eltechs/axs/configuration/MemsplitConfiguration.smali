.class public Lcom/eltechs/axs/configuration/MemsplitConfiguration;
.super Ljava/lang/Object;
.source "MemsplitConfiguration.java"


# instance fields
.field private detected3g:Z

.field private firstRun:Z

.field private final force3g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->force3g:Z

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->firstRun:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->detected3g:Z

    return-void
.end method


# virtual methods
.method public isMemsplit3g()Z
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->firstRun:Z

    if-nez v0, :cond_0

    .line 20
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->detected3g:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->firstRun:Z

    .line 24
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->force3g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->detected3g:Z

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;->isMemSplit3g1g(Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->detected3g:Z

    .line 31
    :goto_0
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/MemsplitConfiguration;->detected3g:Z

    return v0
.end method
