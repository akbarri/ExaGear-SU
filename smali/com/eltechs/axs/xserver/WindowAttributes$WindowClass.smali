.class public final enum Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;
.super Ljava/lang/Enum;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/WindowAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

.field public static final enum INPUT_ONLY:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

.field public static final enum INPUT_OUTPUT:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    const-string v1, "INPUT_OUTPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    const-string v1, "INPUT_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->INPUT_ONLY:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->INPUT_ONLY:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->$VALUES:[Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;
    .locals 1

    .line 20
    const-class v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;
    .locals 1

    .line 20
    sget-object v0, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->$VALUES:[Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    return-object v0
.end method
