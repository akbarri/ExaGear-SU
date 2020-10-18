.class public final enum Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
.super Ljava/lang/Enum;
.source "IncomingImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

.field public static final enum BITMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

.field public static final enum XY_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

.field public static final enum Z_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    const-string v1, "BITMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->BITMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    .line 11
    new-instance v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    const-string v1, "XY_PIXMAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->XY_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    .line 12
    new-instance v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    const-string v1, "Z_PIXMAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->Z_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->BITMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->XY_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->Z_PIXMAP:Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->$VALUES:[Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
    .locals 1

    .line 8
    const-class v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;
    .locals 1

    .line 8
    sget-object v0, Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->$VALUES:[Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/IncomingImageFormat;

    return-object v0
.end method
