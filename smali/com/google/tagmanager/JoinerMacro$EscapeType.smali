.class final enum Lcom/google/tagmanager/JoinerMacro$EscapeType;
.super Ljava/lang/Enum;
.source "JoinerMacro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/JoinerMacro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EscapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/JoinerMacro$EscapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/JoinerMacro$EscapeType;

.field public static final enum BACKSLASH:Lcom/google/tagmanager/JoinerMacro$EscapeType;

.field public static final enum NONE:Lcom/google/tagmanager/JoinerMacro$EscapeType;

.field public static final enum URL:Lcom/google/tagmanager/JoinerMacro$EscapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/JoinerMacro$EscapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;->NONE:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    new-instance v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;

    const-string v1, "URL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/JoinerMacro$EscapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;->URL:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    new-instance v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;

    const-string v1, "BACKSLASH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/tagmanager/JoinerMacro$EscapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;->BACKSLASH:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/tagmanager/JoinerMacro$EscapeType;

    sget-object v1, Lcom/google/tagmanager/JoinerMacro$EscapeType;->NONE:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/JoinerMacro$EscapeType;->URL:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/JoinerMacro$EscapeType;->BACKSLASH:Lcom/google/tagmanager/JoinerMacro$EscapeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;->$VALUES:[Lcom/google/tagmanager/JoinerMacro$EscapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .locals 1

    .line 24
    const-class v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/tagmanager/JoinerMacro$EscapeType;

    return-object p0
.end method

.method public static values()[Lcom/google/tagmanager/JoinerMacro$EscapeType;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/tagmanager/JoinerMacro$EscapeType;->$VALUES:[Lcom/google/tagmanager/JoinerMacro$EscapeType;

    invoke-virtual {v0}, [Lcom/google/tagmanager/JoinerMacro$EscapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/JoinerMacro$EscapeType;

    return-object v0
.end method
