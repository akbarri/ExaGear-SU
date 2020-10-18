.class public final enum Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;
.super Ljava/lang/Enum;
.source "ScrollDirections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectionY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

.field public static final enum DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

.field public static final enum NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

.field public static final enum UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const-string v1, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->$VALUES:[Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;
    .locals 1

    .line 19
    const-class v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;
    .locals 1

    .line 19
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->$VALUES:[Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-virtual {v0}, [Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    return-object v0
.end method
