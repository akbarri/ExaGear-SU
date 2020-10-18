.class public final enum Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;
.super Ljava/lang/Enum;
.source "UBTLaunchConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VFSHacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

.field public static final enum ASSUME_NO_SYMLINKS_EXCEPT_PRERESOLVED:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

.field public static final enum PRERESOLVE_EXPLICITLY_LISTED_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

.field public static final enum PRERESOLVE_WINE_DRIVE_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

.field public static final enum SIMPLE_PASS_DEV:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

.field public static final enum TREAT_LSTAT_SOCKET_AS_STATTING_WINESERVER_SOCKET:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

.field public static final enum TRUNCATE_STAT_INODE:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;


# instance fields
.field private final shortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const-string v1, "PRERESOLVE_WINE_DRIVE_SYMLINKS"

    const-string v2, "pwds"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->PRERESOLVE_WINE_DRIVE_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    .line 45
    new-instance v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const-string v1, "PRERESOLVE_EXPLICITLY_LISTED_SYMLINKS"

    const-string v2, "pels"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->PRERESOLVE_EXPLICITLY_LISTED_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    .line 46
    new-instance v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const-string v1, "ASSUME_NO_SYMLINKS_EXCEPT_PRERESOLVED"

    const-string v2, "ansep"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->ASSUME_NO_SYMLINKS_EXCEPT_PRERESOLVED:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    .line 47
    new-instance v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const-string v1, "TREAT_LSTAT_SOCKET_AS_STATTING_WINESERVER_SOCKET"

    const-string v2, "tlsasws"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TREAT_LSTAT_SOCKET_AS_STATTING_WINESERVER_SOCKET:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    .line 48
    new-instance v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const-string v1, "TRUNCATE_STAT_INODE"

    const-string v2, "tsi"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TRUNCATE_STAT_INODE:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    .line 49
    new-instance v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const-string v1, "SIMPLE_PASS_DEV"

    const-string v2, "spd"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->SIMPLE_PASS_DEV:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    const/4 v0, 0x6

    .line 42
    new-array v0, v0, [Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->PRERESOLVE_WINE_DRIVE_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->PRERESOLVE_EXPLICITLY_LISTED_SYMLINKS:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->ASSUME_NO_SYMLINKS_EXCEPT_PRERESOLVED:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TREAT_LSTAT_SOCKET_AS_STATTING_WINESERVER_SOCKET:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->TRUNCATE_STAT_INODE:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->SIMPLE_PASS_DEV:Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    aput-object v1, v0, v8

    sput-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->$VALUES:[Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->shortName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;
    .locals 1

    .line 42
    const-class v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;
    .locals 1

    .line 42
    sget-object v0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->$VALUES:[Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    invoke-virtual {v0}, [Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;

    return-object v0
.end method


# virtual methods
.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/configuration/UBTLaunchConfiguration$VFSHacks;->shortName:Ljava/lang/String;

    return-object v0
.end method
