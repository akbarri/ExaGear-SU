.class public final enum Lcom/eltechs/axs/xserver/DeviceGrabMode;
.super Ljava/lang/Enum;
.source "DeviceGrabMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/DeviceGrabMode;

.field public static final enum ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

.field public static final enum SYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;

    const-string v1, "SYNCHRONOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/DeviceGrabMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;->SYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    .line 11
    new-instance v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;

    const-string v1, "ASYNCHRONOUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/DeviceGrabMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;->ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/eltechs/axs/xserver/DeviceGrabMode;

    sget-object v1, Lcom/eltechs/axs/xserver/DeviceGrabMode;->SYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/DeviceGrabMode;->ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;->$VALUES:[Lcom/eltechs/axs/xserver/DeviceGrabMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/DeviceGrabMode;
    .locals 1

    .line 8
    const-class v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/DeviceGrabMode;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/DeviceGrabMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/eltechs/axs/xserver/DeviceGrabMode;->$VALUES:[Lcom/eltechs/axs/xserver/DeviceGrabMode;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/DeviceGrabMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/DeviceGrabMode;

    return-object v0
.end method
