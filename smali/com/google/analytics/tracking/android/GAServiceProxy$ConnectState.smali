.class final enum Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
.super Ljava/lang/Enum;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum BLOCKED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field public static final enum PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 32
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "CONNECTED_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 33
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "CONNECTED_LOCAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 34
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "BLOCKED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->BLOCKED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 35
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "PENDING_CONNECTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 36
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 37
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const-string v1, "DISCONNECTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    const/4 v0, 0x7

    .line 30
    new-array v0, v0, [Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->BLOCKED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->$VALUES:[Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    .locals 1

    .line 30
    const-class v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-object p0
.end method

.method public static values()[Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->$VALUES:[Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v0}, [Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-object v0
.end method
