.class synthetic Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$1;
.super Ljava/lang/Object;
.source "SelectExecutableFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$configuration$startup$actions$SelectExecutableFile$UserRequestedAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->values()[Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$1;->$SwitchMap$com$eltechs$axs$configuration$startup$actions$SelectExecutableFile$UserRequestedAction:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$1;->$SwitchMap$com$eltechs$axs$configuration$startup$actions$SelectExecutableFile$UserRequestedAction:[I

    sget-object v1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->EXECUTABLE_FILE_SELECTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$1;->$SwitchMap$com$eltechs$axs$configuration$startup$actions$SelectExecutableFile$UserRequestedAction:[I

    sget-object v1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->FULL_SCAN_REQUESTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
