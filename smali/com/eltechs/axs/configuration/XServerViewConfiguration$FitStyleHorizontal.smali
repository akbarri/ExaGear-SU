.class public final enum Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
.super Ljava/lang/Enum;
.source "XServerViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/XServerViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FitStyleHorizontal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

.field public static final enum CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

.field public static final enum LEFT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

.field public static final enum RIGHT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

.field public static final enum STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->LEFT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    .line 15
    new-instance v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    .line 16
    new-instance v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->RIGHT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    .line 17
    new-instance v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    const-string v1, "STRETCH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->LEFT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->RIGHT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->$VALUES:[Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
    .locals 1

    .line 12
    const-class v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
    .locals 1

    .line 12
    sget-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->$VALUES:[Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {v0}, [Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    return-object v0
.end method
