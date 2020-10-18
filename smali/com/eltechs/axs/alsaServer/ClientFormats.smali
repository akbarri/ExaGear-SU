.class public final enum Lcom/eltechs/axs/alsaServer/ClientFormats;
.super Ljava/lang/Enum;
.source "ClientFormats.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/alsaServer/ClientFormats;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/alsaServer/ClientFormats;

.field public static final enum S16BE:Lcom/eltechs/axs/alsaServer/ClientFormats;

.field public static final enum S16LE:Lcom/eltechs/axs/alsaServer/ClientFormats;

.field public static final enum U8:Lcom/eltechs/axs/alsaServer/ClientFormats;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/eltechs/axs/alsaServer/ClientFormats;

    const-string v1, "U8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/alsaServer/ClientFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->U8:Lcom/eltechs/axs/alsaServer/ClientFormats;

    .line 19
    new-instance v0, Lcom/eltechs/axs/alsaServer/ClientFormats;

    const-string v1, "S16LE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/alsaServer/ClientFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->S16LE:Lcom/eltechs/axs/alsaServer/ClientFormats;

    .line 21
    new-instance v0, Lcom/eltechs/axs/alsaServer/ClientFormats;

    const-string v1, "S16BE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/alsaServer/ClientFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->S16BE:Lcom/eltechs/axs/alsaServer/ClientFormats;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/eltechs/axs/alsaServer/ClientFormats;

    sget-object v1, Lcom/eltechs/axs/alsaServer/ClientFormats;->U8:Lcom/eltechs/axs/alsaServer/ClientFormats;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/alsaServer/ClientFormats;->S16LE:Lcom/eltechs/axs/alsaServer/ClientFormats;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/alsaServer/ClientFormats;->S16BE:Lcom/eltechs/axs/alsaServer/ClientFormats;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->$VALUES:[Lcom/eltechs/axs/alsaServer/ClientFormats;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkFormat(I)Z
    .locals 1

    .line 31
    sget-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->U8:Lcom/eltechs/axs/alsaServer/ClientFormats;

    invoke-virtual {v0}, Lcom/eltechs/axs/alsaServer/ClientFormats;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->S16BE:Lcom/eltechs/axs/alsaServer/ClientFormats;

    invoke-virtual {v0}, Lcom/eltechs/axs/alsaServer/ClientFormats;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/alsaServer/ClientFormats;
    .locals 1

    .line 14
    const-class v0, Lcom/eltechs/axs/alsaServer/ClientFormats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/alsaServer/ClientFormats;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/alsaServer/ClientFormats;
    .locals 1

    .line 14
    sget-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->$VALUES:[Lcom/eltechs/axs/alsaServer/ClientFormats;

    invoke-virtual {v0}, [Lcom/eltechs/axs/alsaServer/ClientFormats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/alsaServer/ClientFormats;

    return-object v0
.end method
