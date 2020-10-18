.class public final enum Lcom/google/tagmanager/TagManager$RefreshMode;
.super Ljava/lang/Enum;
.source "TagManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/TagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/TagManager$RefreshMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/TagManager$RefreshMode;

.field public static final enum DEFAULT_CONTAINER:Lcom/google/tagmanager/TagManager$RefreshMode;

.field public static final enum STANDARD:Lcom/google/tagmanager/TagManager$RefreshMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 78
    new-instance v0, Lcom/google/tagmanager/TagManager$RefreshMode;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/TagManager$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/TagManager$RefreshMode;->STANDARD:Lcom/google/tagmanager/TagManager$RefreshMode;

    .line 89
    new-instance v0, Lcom/google/tagmanager/TagManager$RefreshMode;

    const-string v1, "DEFAULT_CONTAINER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/TagManager$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/TagManager$RefreshMode;->DEFAULT_CONTAINER:Lcom/google/tagmanager/TagManager$RefreshMode;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Lcom/google/tagmanager/TagManager$RefreshMode;

    sget-object v1, Lcom/google/tagmanager/TagManager$RefreshMode;->STANDARD:Lcom/google/tagmanager/TagManager$RefreshMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/TagManager$RefreshMode;->DEFAULT_CONTAINER:Lcom/google/tagmanager/TagManager$RefreshMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/tagmanager/TagManager$RefreshMode;->$VALUES:[Lcom/google/tagmanager/TagManager$RefreshMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/TagManager$RefreshMode;
    .locals 1

    .line 71
    const-class v0, Lcom/google/tagmanager/TagManager$RefreshMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/tagmanager/TagManager$RefreshMode;

    return-object p0
.end method

.method public static values()[Lcom/google/tagmanager/TagManager$RefreshMode;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/tagmanager/TagManager$RefreshMode;->$VALUES:[Lcom/google/tagmanager/TagManager$RefreshMode;

    invoke-virtual {v0}, [Lcom/google/tagmanager/TagManager$RefreshMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/TagManager$RefreshMode;

    return-object v0
.end method
