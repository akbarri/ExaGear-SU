.class public final enum Lcom/eltechs/axs/xserver/events/MappingNotify$Request;
.super Ljava/lang/Enum;
.source "MappingNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/events/MappingNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/events/MappingNotify$Request;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

.field public static final enum KEYBOARD:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

.field public static final enum MODIFIER:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

.field public static final enum POINTER:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    const-string v1, "MODIFIER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->MODIFIER:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    .line 8
    new-instance v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    const-string v1, "KEYBOARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    .line 9
    new-instance v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    const-string v1, "POINTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->POINTER:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    sget-object v1, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->MODIFIER:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->POINTER:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->$VALUES:[Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/events/MappingNotify$Request;
    .locals 1

    .line 5
    const-class v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/events/MappingNotify$Request;
    .locals 1

    .line 5
    sget-object v0, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->$VALUES:[Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    return-object v0
.end method
