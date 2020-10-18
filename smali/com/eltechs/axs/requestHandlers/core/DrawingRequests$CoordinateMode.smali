.class public final enum Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;
.super Ljava/lang/Enum;
.source "DrawingRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoordinateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

.field public static final enum ORIGIN:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

.field public static final enum PREVIOUS:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 255
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    const-string v1, "ORIGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->ORIGIN:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    .line 256
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    const-string v1, "PREVIOUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->PREVIOUS:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    const/4 v0, 0x2

    .line 253
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->ORIGIN:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->PREVIOUS:Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;
    .locals 1

    .line 253
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;
    .locals 1

    .line 253
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/DrawingRequests$CoordinateMode;

    return-object v0
.end method
