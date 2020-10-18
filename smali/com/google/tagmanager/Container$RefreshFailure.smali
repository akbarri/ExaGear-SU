.class public final enum Lcom/google/tagmanager/Container$RefreshFailure;
.super Ljava/lang/Enum;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshFailure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/Container$RefreshFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const-string v1, "NO_SAVED_CONTAINER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 36
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const-string v1, "IO_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 38
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const-string v1, "NO_NETWORK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 40
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const-string v1, "NETWORK_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 42
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const-string v1, "SERVER_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 44
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v0, 0x6

    .line 32
    new-array v0, v0, [Lcom/google/tagmanager/Container$RefreshFailure;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->$VALUES:[Lcom/google/tagmanager/Container$RefreshFailure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/Container$RefreshFailure;
    .locals 1

    .line 32
    const-class v0, Lcom/google/tagmanager/Container$RefreshFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p0
.end method

.method public static values()[Lcom/google/tagmanager/Container$RefreshFailure;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->$VALUES:[Lcom/google/tagmanager/Container$RefreshFailure;

    invoke-virtual {v0}, [Lcom/google/tagmanager/Container$RefreshFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0
.end method
