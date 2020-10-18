.class public final enum Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;
.super Ljava/lang/Enum;
.source "WMStateValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

.field public static final enum ICONIC:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

.field public static final enum NORMAL:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

.field public static final enum WITHDRAWN:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    const-string v1, "WITHDRAWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->WITHDRAWN:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    .line 9
    new-instance v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->NORMAL:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    .line 10
    new-instance v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    const-string v1, "ICONIC"

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v4}, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->ICONIC:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    .line 6
    new-array v0, v4, [Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    sget-object v1, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->WITHDRAWN:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->NORMAL:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->ICONIC:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->$VALUES:[Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;
    .locals 1

    .line 6
    const-class v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;
    .locals 1

    .line 6
    sget-object v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->$VALUES:[Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    invoke-virtual {v0}, [Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->id:I

    return v0
.end method
