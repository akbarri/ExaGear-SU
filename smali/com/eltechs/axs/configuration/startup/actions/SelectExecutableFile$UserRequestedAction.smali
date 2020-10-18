.class public final enum Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;
.super Ljava/lang/Enum;
.source "SelectExecutableFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserRequestedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

.field public static final enum EXECUTABLE_FILE_SELECTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

.field public static final enum FULL_SCAN_REQUESTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 121
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    const-string v1, "EXECUTABLE_FILE_SELECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->EXECUTABLE_FILE_SELECTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    .line 122
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    const-string v1, "FULL_SCAN_REQUESTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->FULL_SCAN_REQUESTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    const/4 v0, 0x2

    .line 119
    new-array v0, v0, [Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    sget-object v1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->EXECUTABLE_FILE_SELECTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->FULL_SCAN_REQUESTED:Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->$VALUES:[Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;
    .locals 1

    .line 119
    const-class v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;
    .locals 1

    .line 119
    sget-object v0, Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->$VALUES:[Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    invoke-virtual {v0}, [Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/configuration/startup/actions/SelectExecutableFile$UserRequestedAction;

    return-object v0
.end method
