.class public final enum Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;
.super Ljava/lang/Enum;
.source "ShaderHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/ShaderHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

.field public static final enum FRAGMENT:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

.field public static final enum VERTEX:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;


# instance fields
.field private final glTypeName:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    const-string v1, "VERTEX"

    const/4 v2, 0x0

    const v3, 0x8b31

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->VERTEX:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    .line 23
    new-instance v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    const-string v1, "FRAGMENT"

    const/4 v3, 0x1

    const v4, 0x8b30

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->FRAGMENT:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    sget-object v1, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->VERTEX:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->FRAGMENT:Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->$VALUES:[Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->glTypeName:I

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->glTypeName:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;
    .locals 1

    .line 20
    const-class v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;
    .locals 1

    .line 20
    sget-object v0, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->$VALUES:[Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    invoke-virtual {v0}, [Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;

    return-object v0
.end method
